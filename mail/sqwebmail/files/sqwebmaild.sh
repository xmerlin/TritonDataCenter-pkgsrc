#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: sqwebmaild.sh,v 1.3 2004/02/24 01:20:54 jlam Exp $
#
# Courier SqWebMail services daemon
#
# PROVIDE: sqwebmaild
# REQUIRE: authdaemond

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="sqwebmaild"
rcvar=${name}
command="@PREFIX@/libexec/courier/sqwebmail/sqwebmaild"
pidfile="@SQWEBMAIL_STATEDIR@/sqwebmail.sock.pid"
required_files="@PKG_SYSCONFDIR@/authmodulelist"

start_cmd="courier_doit start"
stop_cmd="courier_doit stop"

courier_doit()
{
	action=$1
	case ${action} in
	start)
		for f in $required_files; do
			if [ ! -r "$f" ]; then
				@ECHO@ "$0: WARNING: $f is not readable"
				if [ -z $rc_force ]; then
					return 1
				fi
			fi
		done
		@ECHO@ "Starting ${name}."
		;;
	stop)
		@ECHO@ "Stopping ${name}."
		;;
	esac

	${command} ${action}
}

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${start_cmd}
fi
