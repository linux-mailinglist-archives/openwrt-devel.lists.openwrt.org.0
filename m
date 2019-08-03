Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4F80361
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 02:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RutHOd5igiTXLd2MqRxub+qB6N8UK9FBRRogiD7GG3A=; b=acZ8SA0RlKXxPe
	cW8Cdvp8Z/3Chq5ZNdAWXFC9l/lo14Eg/4Sh6t4t+asGvOVpPNZRx0mrS+e4cleZ2TvnWHRKNCfRG
	DzPzF3q5b+lehZQFMPClWRelRXM/3bH515V+BvVHA9x2pNjYQzjMeutGhuN7rNMKF0Qqg33P5BnfG
	GGShByplC9oj15nE5iTPK/j07pGbVCSTUu460AbJPLbhiLJGMcMwjof/xTi8GDk9fv+sUsfOSFsez
	J1hyY46hmL3hsMWDjI+2ejpun/ZQuwi0ptx817aSf7txEvHi7kyJ2GisLfSXdazGn9ojagdw0YoGh
	Ue/eMMQHhGhAgWvPYPCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hthe2-0007CS-TI; Sat, 03 Aug 2019 00:11:35 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hthdg-00073k-PR
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 00:11:16 +0000
Received: by mail-pg1-x52c.google.com with SMTP id n4so1543697pgv.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 17:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=beQEKnvcmmGhaqph+ZpL50PkOk53e6Uqzay+iy8qa84=;
 b=RRBg0SxqgoF4IF1XHSug7W5N9kTwcFBOdSS62JdML4JFwiwAqKhq2jT1aFtg8eW29Q
 AEAIz0ffySg6g/DfijpZycJlc9GAco97ZgrbQBm3gCDVYQfZigFttNGcMIIjlyysw6Xm
 dtwLh5ye1AKV7GX2mgle64HZIi68m803+S8JLBQMmH31tNGQsWC3LIFWf/Kq5r+/5EPM
 LTKBEJi5u2/lcl4tPXI3LPoPULeN7ALVEVib1FTLq68hGklV9IcSdyFSRY+8yByO5Iig
 ZyRxv2zBs+eC0WuhDzpbyeIltfN7A5oUtCbmyZAtVO1mOICp9gqsPcPPY5uqiLsSjZ8b
 s96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=beQEKnvcmmGhaqph+ZpL50PkOk53e6Uqzay+iy8qa84=;
 b=Sc5yrJzzQaKwgqOATLJsukjPFhz67cFvosapJe3ZdAmDaIburmzppbg2zky4VIJQ4x
 N6OUNXicpuBTGk6Q8qMnmHmoJ3y1sgIa2+S7+UXXsn/nms/J6fHghnr/hA+TsXKlHAlm
 3B36z3EEYRwYvBulCQqDJcsvNfMvAIk1hepgNpg+Jz17BJIbYvlsyahKHJjtb11bab/p
 nFjbN9fJvTm9rpl3wl3ZSleO5g7Bi3xm9qOlFIRGF5HlRxdKV1FRq9DoVbfDEg5+A4Po
 ogwu45VZA8Sco7AfIL9mIICII5bxqSn0CDUCP0xh8ixXXTsvVw8FPdj05bmWl9q2xRmc
 FTzQ==
X-Gm-Message-State: APjAAAW6zja8+DbqvRqrEmu6Rj2gzBqGOmTEJPK5QOjgWeWxQQehgeC6
 S/QP5DD2EwTlsnjoDMlK8qw87D51Tvs=
X-Google-Smtp-Source: APXvYqxjP4h4aOGDg8QVXHgpKMu4kVlafjyRnmoEZQPAS3qXS7jZ87R3Zr8LnaxRB1o2+QwS0vcmNg==
X-Received: by 2002:a17:90a:a613:: with SMTP id
 c19mr6941757pjq.17.1564791067824; 
 Fri, 02 Aug 2019 17:11:07 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id h6sm73186817pfb.20.2019.08.02.17.11.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 17:11:07 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  2 Aug 2019 17:11:05 -0700
Message-Id: <20190803001106.25037-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_171112_865157_09608B2B 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: [OpenWrt-Devel] [PATCH 1/2] mdadm: revised mdadm config & init logic
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Joseph Tingiris <joseph.tingiris@gmail.com>

This is a significant revision of /etc/init.d/mdadm.  It adds new
features, support for new configuration options, safer error
handling, (configurable) verbose output, and contains multiple bug
fixes.

Most notably, mdadm was being started with the --config flag and
that prevented it from using its built in Auto Assembly features.
Users were required to put a correct uuid in /etc/config/mdadm.

The new default startup mode is now to automatically assemble all
RAID arrays attached to the machine using device scans, rather than
configuation options.

A new UCI section, config mdadm global, was added with new options that
are supported by the accompanying /etc/init.d/mdadm. Documentation for all
new (and previous) options was added as well.  See the
/etc/config/mdadmin or mdadm.init file itself for more details.

Additionally, a new stateful 'auto' feature was added that functions
similarly to the stateless Auto Assembly feature.  The benefits of
stateful auto assembly are to support features that mdadm 4.0 will only
read from a configuration file, such as setting the MAILFROM value.  The
new mdadm_conf_auto() function will also aid users in troubleshooting.
When verbose is turned on it provides tips and better visibility for what's
actually happening.

Backward compatibility was retained.  Stateful UCI only configurations are
supported.  All previously existing configurations will work in this mode.
However, these users will now have to explicitly turn it on.

A new reload_service() function was added to prevent reloads from
stopping mdadm.  Reloads will now be ignored, though the stage is set for
reloads to trigger scans for new devices.  Explicit restarts still work as
expected.

The start_service() function was enhanced to query new UCI mdadm.global
options: alert_program, config, email, email_from, monitor_frequency,
and verbose.  Each option is documented in /etc/mdadm/config (config.init) and
some additional code comments were added.

Finally, error handling and verbose output was enhanced.  Users will
know what's going on (if verbose is turned on).

Strict reliance on a shell global ($CONF) was removed and replaced with a
single global ($TMP_FILE) that's for development convenience.  When/if a config
file is not specified in the UCI config, it will fall back to using $TMP_FILE as the
configuration file.

Incremented PKG_RELEASE from 1 to 2

Signed-off-by: Joseph Tingiris <joseph.tingiris@gmail.com>
(rebased and ran through shellcheck)
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/mdadm/Makefile           |   2 +-
 package/utils/mdadm/files/mdadm.config | 162 ++++++-
 package/utils/mdadm/files/mdadm.init   | 557 ++++++++++++++++++++++---
 3 files changed, 648 insertions(+), 73 deletions(-)

diff --git a/package/utils/mdadm/Makefile b/package/utils/mdadm/Makefile
index 18026bbed2..f20a58b704 100644
--- a/package/utils/mdadm/Makefile
+++ b/package/utils/mdadm/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mdadm
 PKG_VERSION:=4.1
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=@KERNEL/linux/utils/raid/mdadm
diff --git a/package/utils/mdadm/files/mdadm.config b/package/utils/mdadm/files/mdadm.config
index 50afbc2ab6..0c78c964a8 100644
--- a/package/utils/mdadm/files/mdadm.config
+++ b/package/utils/mdadm/files/mdadm.config
@@ -1,18 +1,154 @@
-config mdadm
+#
+# The mdadm 'global' section is for options that apply to all sections.
+#
+
+config mdadm global
+
+	#
+	# option 'alert_program' values may be a path to a valid, executable binary.
+	#
+	# The default 'alert_program' is not set.
+	#
+	# When mdadm detects an event it will execute this program with 3 arguments, see https://linux.die.net/man/8/mdadm
+	# $1 = will be the event
+	# $2 = will be the meta device
+	# $3 = may be a related component (if one exists)
+	#
+	# * alert_program runs independently from sendmail.
+	# * If both options alert_program and email are set, and both work, then an email and a
+	#   custom alert will be generated.
+	# * no alert program is included in mdadm 4.0-4.
+	#
+	# Lots of possibilities exist, i.e. scripts for netdata, slack, etc.
+	#
+	#option alert_program /usr/sbin/mdadm_alerts
+
+
+	#
+	# option 'config' values may be one of the following.
+	#
+	# The default 'config' is none (stateless auto assembly).
+	#
+	# auto		- stateful, dynamically generated mdadm.conf via block info,
+	#		  stored in /var/etc/mdadm.conf
+	# containers	- stateless, mdadm --assemble --scan --config=containers; see https://linux.die.net/man/8/mdadm
+	# none		- stateless, mdadm --assemble --scan --config=none; aka 'Auto Assembly',
+	#		  see https://linux.die.net/man/8/mdadm
+	# partition	- stateless, mdadm --assemble --scan --config=partition; see https://linux.die.net/man/8/mdadm
+	# uci		- stateful, dynamically generated mdadm.conf via uci array values (below),
+	#		  stored in /var/etc/mdadm.conf
+	# file		- stateful, manually generated mdadm.conf file(s),
+	#		  'file' must be preceded by a / and may be a readable filename
+	#		  or directory with multiple .conf files
+	#
+	# Try uncommenting this and using 'auto' if there are issues.  It provides more comprehensive
+	# diagnostics via verbose messages & the ability to set an email from address.
+	#
+	#option config auto
+
+
+	#
+	# option 'email' values may be a valid (to) email address, or empty.
+	#
+	# The default 'email' to send to is root (monitor email will be sent to the local root user).
+	#
+	# * Sending mail will only work if /usr/lib/sendmail or /usr/sbin/sendmail is available. Install postfix.
+	# * Comment, or unset, the email value causes mail to be disabled.  With no email value, mdadm wont even try.
+	# * A single word name must be a valid user on the system, or it will bounce back to root.
+	#   Unless user 'mdadm' exists (it doesn't by default), this will bounce:
+	#   option email mdadm
+	# * A full email address does not need quoting and will deliver if tcp port 25 (SMTP) is allowed outbound, i.e.
+	#   option email joseph.tingiris@gmail.com
+	# * mdadm only supports one email address (MAILADDR) for all arrays. see mdadm.conf(5)
+	#
+	# mail will be to 'root@$HOSTNAME', i.e. root@OpenWrt
+	#
 	option email root
-	# list devices /dev/hd*
-	# list devices /dev/sd*
-	# list devices partitions
 
-config array
-	option uuid 52c5c44a:d2162820:f75d3464:799750f8
-	option device /dev/md0
-	# option name raid:0
-	# option super_minor 0
-	# list devices /dev/sda1
-	# list devices /dev/sdb1
-	# option spares 0
-	# option spare_group spares
+
+	#
+	# option 'email_from' values may be a valid (from) email address, or empty.
+	#
+	# The default 'email_from' is 'OpenWrt RAID Monitoring <mdadm@$HOSTNAME>', i.e. mdadm@OpenWrt
+	#
+	# * Sending mail will only work if /usr/lib/sendmail or /usr/sbin/sendmail is available. Install postfix.
+	# * Comment, or unset, the email_from value causes mdadm to send mail from
+	#   root@$HOSTNAME, e.g. root@OpenWrt
+	# * A complete from envelope can be specified within quotes, i.e.
+	#   option email_from 'mdadm monitoring <this_is_not_spam@example.com>'
+	# * mdadm only supports setting a from address (MAILFROM) with a stateful config,
+	#   e.g. 'auto' or 'uci'. see mdadm.conf(5)
+	#
+	# mail will be from 'OpenWrt RAID Monitoring <mdadm@$HOSTNAME>', i.e. mdadm@OpenWrt
+	#
+	option email_from 'OpenWrt RAID Monitoring <mdadm>'
+
+
+	#
+	# option 'monitor_frequency' values may be a valid integer, or empty.
+	#
+	# The default monitor frequency (delayed poll) is 120 seconds.
+	#
+	# * This is the polling interval, frequency, or delay.  It's the value for mdadm --delay.  see https://linux.die.net/man/8/mdadm
+	#
+	option monitor_frequency 300
+
+	#
+	# option 'verbose' values may be '1', 'on', or 'true', everything else is false.
+	#
+	# The default verbosity is false (quiet).
+	#
+	# * Standard errors will be sent to console and syslog regardless of this setting.
+	# * When verbose is false mdadm will run in --quiet mode and generate very little log
+	#   or standard output.
+	#
+	# Turn this on if you're having problems, or want more detail.  With SSH_TTY set output will
+	# be to that TTY, otherwise it will go to syslog via logger.
+	#
+	#option verbose on
+
+
+#
+# The mdadm 'array' section(s) are for stateful, manual configurations. Experts only.  Use with caution.
+#
+#
+# The use of multiple 'array' sections is supported by /etc/init.d/mdadm.
+# They must all be named 'array'.
+#
+# As of this writing unnamed 'mdadm' sections are still allowed, but deprecated. Do not use.
+#
+
+#config array
+	#
+	# example 'array' options may be a valid mix of:
+	#
+	# bitmap
+	# container
+	# device
+	# devices
+	# member
+	# name
+	# spare_group
+	# spares
+	# super_minor
+	# uuid
+	#
 	# option bitmap /bitmap.md
 	# option container 00000000:00000000:00000000:00000000
+	# option device /dev/md0
+	# -and/or a devices list-
+	# list devices /dev/hd* # mdadm allows glob, see glob(7)
+	# list devices /dev/sd*
+	# list devices /dev/sda1
+	# list devices /dev/sdb1
+	# list devices containers
+	# list devices partitions
 	# option member 1
+	# option name raid:0
+	# option spare_group spares
+	# option spares 0
+	# option super_minor 0
+	# use uuid from block info (preferred), or mdadm --misc --detail /dev/md0
+	# option uuid 2084de11-70c4-4521-8f95-6113e75f1fe9
+	#
+	# These options directly translate to mdadm -- options, see https://linux.die.net/man/8/mdadm
diff --git a/package/utils/mdadm/files/mdadm.init b/package/utils/mdadm/files/mdadm.init
index 64a50b35de..0b64a63cf0 100644
--- a/package/utils/mdadm/files/mdadm.init
+++ b/package/utils/mdadm/files/mdadm.init
@@ -1,93 +1,532 @@
 #!/bin/sh /etc/rc.common
+# shellcheck disable=SC2086
 
-START=13
-STOP=98
+START=12
+STOP=99
 
 USE_PROCD=1
 PROG=/sbin/mdadm
 NAME=mdadm
 
-CONF="/var/etc/mdadm.conf"
+LOGGER=0 # off
+VERBOSE=1 # off
+
+TMP_FILE="/var/etc/mdadm.conf" # /var/etc is on /tmp; used for temporary state, to enable stateful only mdadm features
+
+[ ! -x "$PROG" ] && exit 1
 
 append_list_item() {
-	append "$2" "$1" "$3"
+    append "$2" "$1" "$3"
 }
 
 append_option() {
-	local var="$1"
-	local cfg="$2"
-	local opt="$3"
-	local name="$4"
-	local sep="$5"
-	local str
-
-	if [ -n "$sep" ]; then
-		config_list_foreach "$cfg" "$opt" append_list_item str "$sep"
-	else
-		config_get str "$cfg" "$opt"
-	fi
-
-	[ -n "$str" ] && append "$var" $(printf "%s=%s" "${name:-${opt//_/-}}" "$str")
+    local var="$1"
+    local cfg="$2"
+    local opt="$3"
+    local name="$4"
+    local sep="$5"
+    local str
+
+    if [ -n "$sep" ]; then
+        config_list_foreach "$cfg" "$opt" append_list_item str "$sep"
+    else
+        config_get str "$cfg" "$opt"
+    fi
+
+    [ -n "$str" ] && append "$var" $(printf "%s=%s" "${name:-${opt//_/-}}" "$str")
 }
 
-mdadm_common() {
-	local cfg="$1"
-	local email devices
+verbose() {
+    local msg="$1"
+    local level="$2"
 
-	if [ -x /usr/sbin/sendmail ]; then
-		config_get email "$cfg" email
-		[ -n "$email" ] && printf "MAILADDR %s\n" "$email" >> $CONF
-	fi
+    [ -z "$level" ] && level="INFO"
 
-	config_list_foreach "$cfg" devices append_list_item devices " "
-	[ -n "$devices" ] && printf "DEVICE %s\n" "$devices" >> $CONF
+    if [ "$VERBOSE" = "1" ]; then
+        if [ ${#SSH_TTY} -gt 0 ]; then
+            printf "$NAME: init %7s - %b\n" "$level" "$msg"
+        else
+            # no SSH_TTY goes to logger
+            printf "$NAME: init %7s - %b\n" "$level" "$msg" | logger -t mdadm
+        fi
+    fi
 }
 
-mdadm_array() {
-	local cfg="$1"
-	local uuid device devices name array
+mdadm_conf_auto() {
+    local mdadm_conf="$1"
+
+    if [ ! -w "$mdadm_conf" ]; then
+        if [ -z "$mdadm_conf" ]; then
+            verbose "mdadm_conf value is empty" ERROR
+        else
+            verbose "'$mdadm_conf' file not found writable" ERROR
+        fi
+        return 1
+    fi
+
+    local block_md block_uuid mdadm_md mdadm_md_rc mdadm_uuid
+
+    # Check block info for active linux_raid_members, if necessary then compare with mdadm, & dynamically update $mdadm_conf
+
+    block_md=0 # counter
+    for block_uuid in $(block info 2> /dev/null | sed -nEe 's#^.* UUID="([^"]*)".*TYPE="linux_raid_member"#\1#p'); do
+        mdadm_md=""
+        mdadm_md_rc=0
+
+        while [ -z "$mdadm_md" ]; do
+            if [ -b "/dev/md$block_md" ]; then
+                # handle mdadm restart, service reload, multiple starts without stops, physical unplug, etc.
+
+                verbose "/dev/md$block_md block device already exists" NOTICE
 
-	config_get uuid "$cfg" uuid
-	config_get name "$cfg" name
-	config_get device "$cfg" device
+                # active arrays will promptly respond; first check
+                mdadm_uuid=$($PROG --detail --test --brief "/dev/md$block_md" 2> /dev/null | sed -nEe '1s#^.*UUID=((.){35})#\1#p')
 
-	if [ -z "$device" ] || [ -z "$uuid$name" ]; then
-		echo "Skipping array without device, uuid or name" >&2
-		return
-	fi
+                if [ -z "$mdadm_uuid" ]; then
+                    # When an array is unplugged and then plugged in again (without rebooting) then it becomes an INACTIVE-ARRAY
+                    # however the device file persists, e.g. /dev/md0, and should be reused, rather than a new device assigned.
+                    if $PROG --detail --test --scan "/dev/md$block_md" 2> /dev/null | grep -E "^(INACTIVE-ARRAY(\ |\t)(.*)/dev/md(|/)$block_md(\ |\t)metadata)" > /dev/null 2>&1; then
+                        verbose "attempting to revive INACTIVE-ARRAY on /dev/md$block_md" NOTICE
+                        if $PROG --examine --scan 2> /dev/null | grep -qE "^(ARRAY(\ |\t)(.*)/dev/md(|/)$block_md(\ |\t))"; then
+                            # this is relatively safe with the above regex validation
+                            mdadm_md="/dev/md$block_md"
+                        fi
+                    else
+                        # This is an unsafe condition to handle with a shell, mdadm sees an inactive device with a different /dev.
+                        # Err to the side of caution;--assemble --scan shoud know what to do ... it will abandon the block device.
+                        # If these are happening, suggest stateless & sacrifice some minor functionality, e.g. MAILFROM
+                        # May be an mdadm or kernel bug with this hardware setup.
+                        verbose "bug? unsafe to revive INACTIVE-ARRAY on /dev/md$block_md" WARNING
+                        block_md=$((block_md+1))
+                        continue
+                    fi
+                fi
 
-	[ -n "$uuid" ] && append array "uuid=$uuid"
-	[ -n "$name" ] && append array "name=$name"
+                if [ "${block_uuid//-/}" = "${mdadm_uuid//:/}" ]; then
+                    # block info & mdadm concur all's well; the meta device is active; reuse
+                    mdadm_md="/dev/md$block_md"
+                    verbose "auto conf found active RAID member block_uuid=$block_uuid and will reused device '$mdadm_md'" OK
+                else
+                    if [ ! -e "/dev/md$block_md" ]; then
+                        # this block device was never assembled previously; new
+                        mdadm_md="/dev/md$block_md"
+                        verbose "auto conf found new RAID member block_uuid=$block_uuid and will assign device '$mdadm_md'" OK
+                    else
+                        block_md=$((block_md+1))
+                        continue
+                    fi
+                fi
 
-	append_option array "$cfg" super_minor
-	append_option array "$cfg" spares
-	append_option array "$cfg" spare_group
-	append_option array "$cfg" bitmap
-	append_option array "$cfg" container
-	append_option array "$cfg" member
-	append_option array "$cfg" devices devices ","
+            else
+                if [ ! -e "/dev/md$block_md" ]; then
+                    # best scenario; no device or file (yet), safest
+                    mdadm_md="/dev/md$block_md"
+                    verbose "auto conf found missing RAID member block_uuid=$block_uuid and will assign device '$mdadm_md'" OK
+                else
+                    # a file exists, but it's not a block device? It's possible (touch), albeit a corner case; discretely say
+                    # we know & pass over it.
+                    verbose "/dev/md$block_md file found, not a block device" WARNING
+                    block_md=$((block_md+1))
+                    continue
+                fi
+            fi
 
-	printf "ARRAY %s %s\n" "$device" "$array" >> $CONF
+            $PROG --detail --test --brief $mdadm_md > /dev/null 2>&1 # rc 1=ok, 1=degrade, 2=dead, 4=missing
+            mdadm_md_rc=$?
+
+            # todo: annouce degraded arrays in the logs? mdadmin monitor will do it but not on demand, only per frequency.
+            #       nice to have for hot plugs ...
+
+            verbose "block_md=$block_md, block_uuid=$block_uuid, mdadm_md=$mdadm_md, mdadm_uuid=$mdadm_uuid, rc=$mdadm_md_rc" INFO
+
+            if [ $mdadm_md_rc -lt 4 ]; then
+                $PROG --detail --test --brief $mdadm_md 2> /dev/null >> $mdadm_conf
+            else
+                # there's a device with no header.  maybe it's to replace a failed device ...
+                echo "ARRAY $mdadm_md uuid=$block_uuid" >> $mdadm_conf
+            fi
+
+        done
+
+    done
+
+    if [ -n "$mdadm_md" ]; then
+        return 0
+    else
+        return 1
+    fi
+}
+
+mdadm_conf_uci() {
+    local cfg="$1"
+    local mdadm_conf="$2"
+
+    if [ -z "$cfg" ]; then
+        verbose "cfg is empty" WARNING
+        return 1
+    fi
+
+    local cfg_name
+    cfg_name=$(uci_get mdadm.$cfg 2> /dev/null)
+
+    if [ -z "$cfg_name" ]; then
+        verbose "($cfg) mdadm config name is empty" NOTICE
+    fi
+
+    if [ -z "$mdadm_conf" ]; then
+        verbose "($cfg) skipping mdadm.$cfg_name array; config file is empty" WARNING
+        return 1
+    fi
+
+    if ! touch "$mdadm_conf" 2> /dev/null; then
+        verbose "($cfg) skipping mdadm.$cfg_name array; can't touch '$mdadm_conf'" ERROR
+        return 1
+    fi
+
+    local array device devices name uuid
+
+    config_get name "$cfg" name
+    config_get device "$cfg" device
+    config_get uuid "$cfg" uuid
+
+    config_list_foreach "$cfg" devices append_list_item devices " "
+    [ -n "$devices" ] && printf "DEVICE %s\n" "$devices" >> $mdadm_conf
+
+    if [ -z "$device" ] || [ -z "$uuid$name" ]; then
+        verbose "($cfg) skipping mdadm.$cfg_name array; no device, uuid, or name" WARNING
+        return 1
+    fi
+
+    [ -n "$uuid" ] && append array "uuid=$uuid"
+    [ -n "$name" ] && append array "name=$name"
+
+    append_option array "$cfg" super_minor
+    append_option array "$cfg" spares
+    append_option array "$cfg" spare_group
+    append_option array "$cfg" bitmap
+    append_option array "$cfg" container
+    append_option array "$cfg" member
+    append_option array "$cfg" devices devices ","
+
+    printf "ARRAY %s %s\n" "$device" "$array" >> $mdadm_conf
+}
+
+reload_service() {
+    while read -r line; do echo $line; done
+    # running start_service() on reload should be OK in all modes, except manual configs.
+    # for auto & none, start_service() already rescans for hotplugged devices, add new arrays, etc.
+    # could check for the configured mode & call appropriately?  doing nothing is safer; todo: test & resolve
+    verbose "reload_service called, ignoring" NOTICE
+    return 0
 }
 
 start_service() {
-	local email
+    local config config_detail config_file config_level config_mode config_rc config_state config_verbose mdadm_conf
+
+    # mdadm.global specific locals
+    local alert_program email email_from mail_program mdadm_args monitor_frequency
+
+    config_verbose=$(uci_get mdadm.global.verbose 2> /dev/null | awk '{print tolower($1)}')
+    if [ "$config_verbose" = "1" ] || [ "$config_verbose" = "on" ] || [ "$config_verbose" = "true" ]; then
+        VERBOSE=1 # turn verbose on globally
+        config_verbose=1
+        mdadm_args="--verbose"
+    else
+        unset -v config_verbose
+        mdadm_args="--quiet"
+    fi
+
+    verbose "start_service $*" INFO
+
+    config_rc=0
+    config_detail="start"
+    config_level="INFO"
+    config_mode="service"
+
+    config=$(uci_get mdadm.global.config 2> /dev/null)
+    if [ -z "$config" ]; then
+        # per PR1713 discussion; this works very well for the majority of use cases; let mdadm do the heavy lifting.
+        # none is (Auto Assemble; or no --config); see mdadm(8), default
+        config='none'
+        config_detail="mdadm.global.config value is empty"
+        config_state='stateless'
+        config_mode="default"
+        config_level='OK'
+    else
+        # experts only
 
-	mkdir -p "${CONF%/*}"
-	printf "# Autogenerated from /etc/config/mdadm, do not edit!\n" > $CONF
+        config_mode="manual"
 
-	config_load mdadm
-	config_foreach mdadm_common mdadm
-	config_foreach mdadm_array array
+        # check file values first, to preserve case of file name values
+        if [ "${config:0:1}" = "/" ]; then
+            config_state='stateful' # all types of file configs are stateful
 
-	$PROG --assemble --scan --config="$CONF"
+            if [ -d "$config" ] && [ -r "$config" ]; then
+                local config_file_count=0
+                for config_file in ${config}/*.conf; do
+                    if [ -r "$config_file" ]; then
+                        config_file_count=$((config_file_count+1))
+                    fi
+                done
+                if [ $config_file_count -eq 0 ]; then
+                    config_level="WARNING"
+                else
+                    config_level="OK"
+                fi
+                config_detail="directory found with $config_file_count readable .conf files"
+            else
+                if [ -w "$config" ]; then
+                    if [ -s "$config" ]; then
+                        # regardless, this will rely on mdadm for final validation; for informational purposes ...
+                        grep -E '^((DEVICE){1}(\ |\t)(.*)(/dev/|containers|partitions))' "$config" > /dev/null 2>&1 # pattern per mdadm(8)
+                        if [ $? -eq 0 ]; then
+                            config_detail="file found, readable with a ^DEVICE"
+                            config_level="OK"
+                        else
+                            config_detail="file found, readable without a ^DEVICE"
+                            config_level="WARNING"
+                        fi
+                    else
+                        config_detail="file found, writable and empty"
+                        config_level="OK"
+                    fi
+                else
+                    config_detail="file not found, unwritable"
+                    config_level="FATAL"
+                    config_rc=1
+                fi
+            fi
+        else
+            config_mode="dynamic"
 
-	procd_open_instance
-	procd_set_param command "$PROG" --monitor --syslog --scan --config="$CONF"
-	procd_close_instance
+            # allow static values in mixed case; convert to lower
+            config="$(awk -v config="$config" 'BEGIN{print tolower(config)}')"
+            if [ "$config" = "containers" ] || [ "$config" = "none" ] || [ "$config" = "partition" ]; then
+                # pass through to mdadm --config=
+                config_detail="dynamic; uci static key value"
+                config_level="OK"
+                config_state='stateless'
+            else
+                if [ "$config" = "auto" ] || [ "$config" = "uci" ]; then
+                    config_detail="dynamic; $config config"
+                    config_level="OK"
+                    config_state='stateful'
+                    mdadm_conf="$TMP_FILE"
+                else
+                    config_detail="invalid; unsupported uci config key value"
+                    config_level="FATAL"
+                    config_state='stateful'
+                    config_rc=1
+                fi
+            fi
+        fi
+    fi
+
+    # final safety & functional checks
+
+    # check for fatality
+    if [ -z "$config" ]; then
+        config="${config}?"
+        config_detail="$config_detail (sorry, something went wrong; check the config settings)"
+        config_level="FATAL"
+        config_mode="${config_mode}?"
+        config_state="${config_state}?"
+        config_rc=1
+    fi
+
+    # Prefer mdadm.global.email; only one is allowed and can be an --email argument per mdadm.conf(5)
+    email=$(uci_get mdadm.global.email 2> /dev/null)
+
+    # mdadm (or postfix?) bug; workaround.  mdadm 4.0 for 18.06.1 has a compiled in default of '/usr/lib/sendmail -t'.
+    # There's no configurable way to change it and mdadm must be recompiled differently for Openwrt, or posfix should
+    # add the link. In 18.06.1, postfix 3.3.0-1 installs sendmail in /usr/sbin; mdadm complains & no mail is delivered.
+    # Other distro's postfix pkg typically installs this link ... or one in /etc/alternatives.
+    # Since mdadm needs it, I'm adding it here to be sure mdadm can send email if there's a /usr/sbin/sendmail.
+
+    # There's really no point in making mdadm's compiled in sendmail configurable via uci.
+    mail_program="/usr/lib/sendmail"
+    if [ -x /usr/sbin/sendmail ] && [ ! -e "$mail_program" ]; then
+        # a sym link will suffice
+        if ! ln -s /usr/sbin/sendmail "$mail_program"; then
+            verbose "ln -s /usr/bin/sendmail /usr/lib/sendmail failed" WARNING
+        fi
+    fi
+
+    if [ ! -x "$mail_program" ]; then
+        verbose "disabling email; mail program '/usr/lib/sendmail' not found executable (install postfix)" WARNING
+        email=""
+    fi
+
+    if [ "$config_state" = "stateful" ] && [ -n "$mdadm_conf" ]; then
+        if mkdir -p "${mdadm_conf%/*}" > /dev/null 2>&1; then
+            printf "# Autogenerated from /etc/init.d/mdadm, do not edit!\n" > $mdadm_conf
+
+            # Use mdadm.global.email_from only if there's a valid mta; only one is allowed per mdadm.conf(5)
+            # todo: see what other mtas Openwrt has in their opkg repos & maybe support others
+            if [ -x "$mail_program" ]; then
+                email_from=$(uci_get mdadm.global.email_from 2> /dev/null)
+            fi
+
+            if [ "$config" = "auto" ]; then
+                # stateful mdadm.conf auto configuration
+                if ! mdadm_conf_auto "$mdadm_conf"; then
+                    #there's quite a bit of logic & error handling in mdadm_conf_auto; if it doesn't return 0 then it's a fatality
+                    config_detail="$config_detail (couldn't find any meta devices; check connections, or try stateless autoconfig)"
+                    config_level="FATAL"
+                    config_rc=1
+                fi
+            else
+                # stateful mdadm.conf uci configuration
+
+                # load uci config from /etc/config/mdadm
+                config_load mdadm
+
+                # This is how mdadm uci mdadm config sections should be named, like fstab does with 'mount'.
+                # The included uci /etc/config/mdadm provides more documentation & direction.
+                config_foreach mdadm_conf_uci array "$mdadm_conf"
+
+                # The unlabled mdadm.@mdadm[0] section should be (is now) deprecated.
+                # It's more difficult to document how to use, redundant, and over complicated this init configuration.
+
+                # Confused; originally config_foreach?
+                # It's possible to specify multiple mdadm sections with array options in all sections.
+                # Thus multiple option emails which could result in multiple MAILADDR being appended to mdadm.conf.
+                # That confuses mdadm.
+
+                # The following code is here to prevent regressions.
+
+                config_foreach mdadm_conf_uci mdadm "$mdadm_conf"
+
+                # For backward compatibility; this will allow an mdadm.@mdadm[0] section's option email.
+                # (only if mdadm.global.email is not set; again, prefer mdadm.global.email)
+                #
+                # bug fixed. The first legacy mdadm section option email will be used.
+                # a better fix would be to *only* support array sections.
+                #
+                [ -z "$email" ] && [ -x "$mail_program" ] && email=$(uci_get mdadm.@mdadm[0].email 2> /dev/null)
+                # email_from is a new feature; was not previously handled; no need to and please don't backport
+
+            fi
+
+            # This is nice feature to have to get mdadm mails through spam filters, etc.
+            # Too bad mdadm (4.0) doesn't have an argument for it.
+            # Maybe mdadm 4.1 will ... todo: revisit when making mdadm 4.1 & it's in Openwrt mainline.
+            # This tests successfully with the postfix workaround above & mdadm 4.0.
+            if [ -x "$mail_program" ]; then
+                printf "MAILFROM %s\n" "$email_from" >> $mdadm_conf # only supported via stateful configs; see mdadm.conf(5)
+            fi
+
+            if [ -n "$config_verbose" ] && [ -r "$mdadm_conf" ]; then
+                verbose "mdadm_conf = $mdadm_conf (config_verbose=$config_verbose)" INFO
+                verbose "---cut $mdadm_conf cut---" INFO
+                while read -r line; do
+                    verbose "$line" INFO
+                done < "$mdadm_conf"
+                unset -v line
+                verbose "---cut $mdadm_conf cut---" INFO
+            fi
+
+        else
+            config_detail="$config_detail (mkdir failed; check permissions)"
+            config_level="FATAL"
+            config_rc=1
+        fi
+    fi
+
+    if [ $config_rc -ne 0 ]; then
+        # FATAL
+        verbose "$config_state,$config_mode config='$config', $config_detail" "$config_level" INFO
+        [ -n "$mdadm_conf" ] && [ -w "$mdadm_conf" ] && rm -f "$mdadm_conf"
+        exit $config_rc
+    fi
+
+    # Good to go, no more fatal exits, finish getting global & setting local values ... they're all optional.
+
+    mdadm_args="$mdadm_args --scan"
+
+    if [ -n "$mdadm_conf" ]; then
+        # mdadm.global.config </file>
+        mdadm_args="$mdadm_args --config=$mdadm_conf"
+    else
+        # mdadm.global.config all (containers, partitions, etc), except none
+        [ -n "$config" ] && [ "$config" != 'none' ] && mdadm_args="$mdadm_args --config=$config"
+    fi
+
+    local assemble_count assemble_rc
+
+    assemble_count=$($PROG --detail --brief --scan 2> /dev/null | wc -l)
+    verbose "$assemble_count arrays are currently assembled" INFO
+
+    # setup assembly mode
+
+    verbose "(assemble) '$PROG --assemble $mdadm_args'" INFO
+    $PROG --assemble $mdadm_args > /dev/null 2>&1
+    assemble_rc=$?
+
+    if [ $assemble_rc -eq 0 ]; then
+        verbose "all arrays assembled successfully" OK
+        if [ -n "$config_verbose" ]; then
+            true > /var/log/mdadm.detail
+            local assemble_dev assemble_devs
+            assemble_devs=$($PROG --detail --brief --scan | awk '{print $2}')
+            for assemble_dev in $assemble_devs; do
+             {
+                printf "\n"
+                $PROG --verbose --detail $assemble_dev
+                printf "\n"
+             } >> /var/log/mdadm.detail
+            done
+            unset -v assemble_dev
+            while read -r line; do
+                verbose "$line" INFO
+            done < "/var/log/mdadm.detail"
+            unset -v line
+        fi
+    else
+        if [ $assemble_count -eq 0 ]; then
+            verbose "no arrays assembled successfully" ERROR
+        else
+            verbose "no new arrays need assembly" NOTICE
+        fi
+    fi
+
+    # setup monitor mode
+
+    alert_program=$(uci_get mdadm.global.alert_program 2> /dev/null)
+    if [ -n "$alert_program" ]; then
+        if [ -x "$alert_program" ]; then
+            mdadm_args="$mdadm_args --alert=$alert_program"
+        else
+            verbose "disabling alerts; alert_progam '$alert_program' not found executable" WARNING
+        fi
+    fi
+
+    [ -n "$email" ] && mdadm_args="$mdadm_args --mail=$email"
+
+    monitor_frequency=$(uci_get mdadm.global.monitor_frequency 2> /dev/null | sed -e 's/[^0-9]*//g')
+    if [ -n "$monitor_frequency" ]; then
+        mdadm_args="$mdadm_args --delay=$monitor_frequency"
+        verbose "setting monitor frequency to '$monitor_frequency' seconds"
+    fi
+
+    verbose "(monitor) '$PROG --monitor --syslog $mdadm_args'" INFO
+
+    # /etc/rc.common doesn't like valid sh constructs like while read line; do echo $line; done <<< "$(echo hello; echo world)" # 8|
+    # Taking the time machine back to sh is rough enough as it is ... I need to better understand its purpose. I spent too much time
+    # in /lib/functions.  It's all circa 2006-2013.  Yikes.  Where's the man pages?  Or even code comments?  It would've been way
+    # easier just to do *everything* the good ol' sysvinit fashioned way, or use systemd.  Just a gripe, I really do like OpenWrt.
+    procd_open_instance
+    procd_set_param command "$PROG" --monitor --syslog $mdadm_args
+    procd_close_instance
+
+    verbose "$config_state,$config_mode config=$config, $config_detail complete" "$config_level"
 }
 
 stop_service() {
-	$PROG --stop --scan
+    $PROG --stop --scan
+    if echo "here VERBOSE=$VERBOSE"; then
+        verbose "'$PROG --stop --scan' stop_service succeeded" OK
+    else
+        verbose "'$PROG --stop --scan' stop_service failed" ERROR
+    fi
 }
-
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
