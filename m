Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9731AD9C6
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 11:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0laystBjOGjfkID/FGm8GFMo31V0yPKiDo4lm4GIvHs=; b=cN5zYSmRoQPBWK
	H/k5ZYwP3xsY819FC7i3zS1Oo6it75QfuaQnVmWt+BP3gncVkQI+0lG0tjIix10s49z80z54eGlpV
	PjBCSFJWUN+keGOyK1G4uFwn0mG4nsmGpLwKB5px1/eCiy9gt+hmxedG0zZkpt1R9Wms71VY/0P29
	bLKNCuX/Inkbua4I9WCdcLF8f4OQtNOQzDfsP0ZWi2UuTt5LzBP9N+eXmWGVITj+Ag6f/ErOYopE2
	FbHBTTe6nxygge0rj9wkwdi2cIquwVV/bAhUc5DValgMjDp/F+2So9fwDPH5EygPEZX4tynlQS0YW
	UPO0B4DnVnxTpT6aNsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNF6-0003ej-Az; Fri, 17 Apr 2020 09:25:00 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNEy-0003eD-LX
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 09:24:55 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jPNEr-0000xh-PX; Fri, 17 Apr 2020 11:24:47 +0200
Date: Fri, 17 Apr 2020 10:24:36 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: mail@adrianschmutzler.de
Message-ID: <20200417092436.GA1544@makrotopia.org>
References: <20200414233728.2519084-1-rosenp@gmail.com>
 <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_022452_703155_F9432805 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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
Cc: openwrt-devel@lists.openwrt.org, 'Rosen Penev' <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Apr 17, 2020 at 10:50:32AM +0200, mail@adrianschmutzler.de wrote:
> Hi,
> 
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Rosen Penev
> > Sent: Mittwoch, 15. April 2020 01:37
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCHv3] ubox: run init script through shellcheck
> > 
> > Warnings fixed:
> > 
> > SC2004: $/${} is unnecessary on arithmetic variables.
> > SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
> > SC2086: Double quote to prevent globbing and word splitting.
> > 
> > Removed most usages of ${} with $. There's no need for it. ${} is mainly
> > useful with substrings and arrays, which are not used here.
> > 
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  v3: Added quoting fixes.
> >  v2: Fixed mistake with executing PIDCOUNT.
> >  package/system/ubox/Makefile       |  2 +-
> >  package/system/ubox/files/log.init | 32 +++++++++++++++---------------
> >  2 files changed, 17 insertions(+), 17 deletions(-)
> > 
> > diff --git a/package/system/ubox/Makefile
> > b/package/system/ubox/Makefile index cfa0b594e4..3970a4fc9c 100644
> > --- a/package/system/ubox/Makefile
> > +++ b/package/system/ubox/Makefile
> > @@ -1,7 +1,7 @@
> >  include $(TOPDIR)/rules.mk
> > 
> >  PKG_NAME:=ubox
> > -PKG_RELEASE:=3
> > +PKG_RELEASE:=4
> > 
> >  PKG_SOURCE_PROTO:=git
> >  PKG_SOURCE_URL=$(PROJECT_GIT)/project/ubox.git
> > diff --git a/package/system/ubox/files/log.init
> > b/package/system/ubox/files/log.init
> > index 250f805b44..4873a24472 100644
> > --- a/package/system/ubox/files/log.init
> > +++ b/package/system/ubox/files/log.init
> > @@ -32,19 +32,19 @@ validate_log_daemon()
> > 
> >  start_service_daemon()
> >  {
> > -	[ $log_buffer_size -eq 0 -a $log_size -gt 0 ] &&
> > log_buffer_size=$log_size
> > -	[ $log_buffer_size -eq 0 ] && log_buffer_size=64
> > +	[ "$log_buffer_size" -eq 0 ] && [ "$log_size" -gt 0 ] &&
> 
> I'm never sure whether a comparison [ "$string" -eq 0 ], i.e. one with quotes and one without using -eq works as expected in all cases.
> I typically use [ "$string" = "0" ] instead, but I'm not sure whether that's effectively just the same.

It's not:
i="0 -eq 0 -o 1"

[ $i -eq 1 ] && echo 1
1

[ "$i" -eq 0 ] && echo 1
bash: [: 0 -eq 0 -o 0: integer expression expected

So as a general rule, it does make sense to use quotes.

> 
> Rest seems fine, despite some similar cases with -eq/-ne below.
> 
> Best
> 
> Adrian
> 
> > log_buffer_size="$log_size"
> > +	[ "$log_buffer_size" -eq 0 ] && log_buffer_size=64
> >  	procd_open_instance
> >  	procd_set_param command "/sbin/logd"
> > -	procd_append_param command -S "${log_buffer_size}"
> > +	procd_append_param command -S "$log_buffer_size"
> >  	procd_set_param respawn 5 1 -1
> >  	procd_close_instance
> >  }
> > 
> >  start_service_file()
> >  {
> > -	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
> > -	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
> > +	PIDCOUNT=$((PIDCOUNT + 1))
> > +	local pid_file="/var/run/logread.$PIDCOUNT.pid"
> > 
> >  	[ "$2" = 0 ] || {
> >  		echo "validation failed"
> > @@ -52,34 +52,34 @@ start_service_file()
> >  	}
> >  	[ -z "${log_file}" ] && return
> > 
> > -	mkdir -p "$(dirname "${log_file}")"
> > +	mkdir -p "$(dirname "$log_file")"
> > 
> >  	procd_open_instance
> >  	procd_set_param command "$PROG" -f -F "$log_file" -p "$pid_file"
> > -	[ -n "${log_size}" ] && procd_append_param command -S "$log_size"
> > +	[ -n "$log_size" ] && procd_append_param command -S "$log_size"
> >  	procd_close_instance
> >  }
> > 
> >  start_service_remote()
> >  {
> > -	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
> > -	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
> > +	PIDCOUNT=$((PIDCOUNT + 1))
> > +	local pid_file="/var/run/logread.$PIDCOUNT.pid"
> > 
> >  	[ "$2" = 0 ] || {
> >  		echo "validation failed"
> >  		return 1
> >  	}
> > -	[ "${log_remote}" -ne 0 ] || return
> > -	[ -z "${log_ip}" ] && return
> > -	[ -z "${log_hostname}" ] && log_hostname=$(cat
> > /proc/sys/kernel/hostname)
> > +	[ "$log_remote" -ne 0 ] || return
> > +	[ -z "$log_ip" ] && return
> > +	[ -z "$log_hostname" ] && log_hostname=$(cat
> > +/proc/sys/kernel/hostname)
> > 
> >  	procd_open_instance
> > -	procd_set_param command "$PROG" -f -h "$log_hostname" -r
> > "$log_ip" "${log_port}" -p "$pid_file"
> > -	case "${log_proto}" in
> > +	procd_set_param command "$PROG" -f -h "$log_hostname" -r
> > "$log_ip" "$log_port" -p "$pid_file"
> > +	case "$log_proto" in
> >  		"udp") procd_append_param command -u;;
> > -		"tcp") [ "${log_trailer_null}" -eq 1 ] && procd_append_param
> > command -0;;
> > +		"tcp") [ "$log_trailer_null" -eq 1 ] && procd_append_param
> > command
> > +-0;;
> >  	esac
> > -	[ -z "${log_prefix}" ] || procd_append_param command -P
> > "${log_prefix}"
> > +	[ -z "$log_prefix" ] || procd_append_param command -P
> > "$log_prefix"
> >  	procd_close_instance
> >  }
> > 
> > --
> > 2.25.2
> > 
> > 
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel



> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
