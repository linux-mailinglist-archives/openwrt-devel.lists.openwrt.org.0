Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A032E1AE90B
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 02:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vi9r3rV/8Y9xFIYwF95msk+y9/oFVTgfugv7LjXHASo=; b=iM6uilFPY8Hihm
	lXgO0iGmMwkVaOLrsEbPW2Y8yGAUIKdJnura79mvDBq08wg3fOYL9REIDNzuH7Gu+Abi8hcUSiMtW
	K7sflP8pCmm0b/97kUKdk3DYRnWu6sYCkfJbq6P3+XCbSJs+PGT7GPTI67/79jcGOGcZqdR6eymuq
	wlmDm1NFIvWb8Qu3FMop+2iQFHdgixvRcTPes4/9S/HdziVrsnRB4PV3TGautG35DqN5e3JF2xEcu
	f725JfmZmGCw/ljjV7izvZO8xL0txeW6dK7k4q+lvdQnBKicTmxrsN6z+MvNj/AWmDgLCnPqEIxyO
	jUObFYiwD0607QF+Q2cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPbnB-0003KG-DK; Sat, 18 Apr 2020 00:57:09 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPbn5-0003JC-JK
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 00:57:05 +0000
Received: by mail-ot1-x341.google.com with SMTP id k21so3041819otl.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 17:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N7nPSXS9jHJyKskxYwnqDnmDm0CsCIak9+A2wi41gSw=;
 b=gBV6nrq8y4hmASr8vtzN4SyZEITBPe7nnZf73YUHocmtLoct/rDyYIVeBOosrx6MoK
 lypAc+2aoMtK/IdVaWcDcp7kOe0NoLxoxF/ofFOsT7HXxR/bp6iIug3iLyghfV0Ao2Jf
 QkzFFUwpx6M1mrwI49PzdigkNv9xL9hqopLdwturYZcELLK0Jw0z57DVYRDcnF/V7tik
 MQmcsUousSR0YikDxojVmaRm2MQU0UjXjF+YTkfh9vSy3aluNKJykmXumq4ijnApXZl9
 1Y4hTwWf8kS9HRzkXTJOa9/289By5Q3wBPfjl1dhhO8F2ijyEEueu8Z85kS7ch+kzzn0
 FIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N7nPSXS9jHJyKskxYwnqDnmDm0CsCIak9+A2wi41gSw=;
 b=XXe28j4VO+t4BzaZJe2H7h7jW6MiHnxP5yHYcY/W8yTalSiLlHXpy6xLfoBtWkyNai
 2T6p3pubc9L/pIan1Nd7JfIZSNTiJnpRg1+kcjcA6kTedX+Wz5H6IGQX1u8aHJlG2SOc
 8iphw5iaxtgEQj0tAinwjn6dylYI596KTVYNsgMAWMUxvmgc63rym9Mcj63gQKrHx6+N
 ngyvIJNGOgrbCHlBgvlPKWMzZoYs1Epj91sAHpRCKEfx8+EXV9wxdBuBVNAu8D2Ishhs
 jRxScyXymVED6/bYZikKPzAqMyLSUt8m/cKTl6TrHTg8BnSzZ5dAHNYcnLSA9sejMWQG
 LJ1g==
X-Gm-Message-State: AGi0PuZCwClKnFZTB7/mr4DJLyxwm5VC0oPX6QLYV/ZablwcG9u6uZKQ
 nQOAIgNv1yGswdVJJ9SFM9KX4hnpEJz/XYVTE59wITj+h40=
X-Google-Smtp-Source: APiQypJQ/+ut8o1Pm+qp9OjNOHm47YitIzOsrx+N6rJv02KVAg+H2qgs0L10IHxKwvSzZwrlEhVx6HC/yIOnYEp7NYc=
X-Received: by 2002:a05:6830:1303:: with SMTP id
 p3mr1287618otq.186.1587171420550; 
 Fri, 17 Apr 2020 17:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200414233728.2519084-1-rosenp@gmail.com>
 <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
In-Reply-To: <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 17 Apr 2020 17:56:49 -0700
Message-ID: <CAKxU2N9fWhV+ZTFM-EXgKzsrFTFv7w+Fi0OWVrrC+C4jH+PEMA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_175703_663209_938CFDAF 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Apr 17, 2020 at 1:50 AM <mail@adrianschmutzler.de> wrote:
>
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
> > -     [ $log_buffer_size -eq 0 -a $log_size -gt 0 ] &&
> > log_buffer_size=$log_size
> > -     [ $log_buffer_size -eq 0 ] && log_buffer_size=64
> > +     [ "$log_buffer_size" -eq 0 ] && [ "$log_size" -gt 0 ] &&
>
> I'm never sure whether a comparison [ "$string" -eq 0 ], i.e. one with quotes and one without using -eq works as expected in all cases.
> I typically use [ "$string" = "0" ] instead, but I'm not sure whether that's effectively just the same.
Sounds bogus. log_buffer_size and log_size are stated to be uintegers above.
>
> Rest seems fine, despite some similar cases with -eq/-ne below.
-eq/-ne vs = is a stylistic difference.
>
> Best
>
> Adrian
>
> > log_buffer_size="$log_size"
> > +     [ "$log_buffer_size" -eq 0 ] && log_buffer_size=64
> >       procd_open_instance
> >       procd_set_param command "/sbin/logd"
> > -     procd_append_param command -S "${log_buffer_size}"
> > +     procd_append_param command -S "$log_buffer_size"
> >       procd_set_param respawn 5 1 -1
> >       procd_close_instance
> >  }
> >
> >  start_service_file()
> >  {
> > -     PIDCOUNT="$(( ${PIDCOUNT} + 1))"
> > -     local pid_file="/var/run/logread.${PIDCOUNT}.pid"
> > +     PIDCOUNT=$((PIDCOUNT + 1))
> > +     local pid_file="/var/run/logread.$PIDCOUNT.pid"
> >
> >       [ "$2" = 0 ] || {
> >               echo "validation failed"
> > @@ -52,34 +52,34 @@ start_service_file()
> >       }
> >       [ -z "${log_file}" ] && return
> >
> > -     mkdir -p "$(dirname "${log_file}")"
> > +     mkdir -p "$(dirname "$log_file")"
> >
> >       procd_open_instance
> >       procd_set_param command "$PROG" -f -F "$log_file" -p "$pid_file"
> > -     [ -n "${log_size}" ] && procd_append_param command -S "$log_size"
> > +     [ -n "$log_size" ] && procd_append_param command -S "$log_size"
> >       procd_close_instance
> >  }
> >
> >  start_service_remote()
> >  {
> > -     PIDCOUNT="$(( ${PIDCOUNT} + 1))"
> > -     local pid_file="/var/run/logread.${PIDCOUNT}.pid"
> > +     PIDCOUNT=$((PIDCOUNT + 1))
> > +     local pid_file="/var/run/logread.$PIDCOUNT.pid"
> >
> >       [ "$2" = 0 ] || {
> >               echo "validation failed"
> >               return 1
> >       }
> > -     [ "${log_remote}" -ne 0 ] || return
> > -     [ -z "${log_ip}" ] && return
> > -     [ -z "${log_hostname}" ] && log_hostname=$(cat
> > /proc/sys/kernel/hostname)
> > +     [ "$log_remote" -ne 0 ] || return
> > +     [ -z "$log_ip" ] && return
> > +     [ -z "$log_hostname" ] && log_hostname=$(cat
> > +/proc/sys/kernel/hostname)
> >
> >       procd_open_instance
> > -     procd_set_param command "$PROG" -f -h "$log_hostname" -r
> > "$log_ip" "${log_port}" -p "$pid_file"
> > -     case "${log_proto}" in
> > +     procd_set_param command "$PROG" -f -h "$log_hostname" -r
> > "$log_ip" "$log_port" -p "$pid_file"
> > +     case "$log_proto" in
> >               "udp") procd_append_param command -u;;
> > -             "tcp") [ "${log_trailer_null}" -eq 1 ] && procd_append_param
> > command -0;;
> > +             "tcp") [ "$log_trailer_null" -eq 1 ] && procd_append_param
> > command
> > +-0;;
> >       esac
> > -     [ -z "${log_prefix}" ] || procd_append_param command -P
> > "${log_prefix}"
> > +     [ -z "$log_prefix" ] || procd_append_param command -P
> > "$log_prefix"
> >       procd_close_instance
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

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
