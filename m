Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3255A1ECD54
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 12:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qLzaiPsk/2ytHcDi42zIXkQFfGMSpSqk3+ESx8r3Mk4=; b=KpeNTfj1eDWbASU5VF9wIFPN3k
	4oVR89jPnQCWBRKwFMqHF53xudpvlXhAoIEOxpD92+Pz7F4ecRNdy8aICnIzXOTASJ7M5WQWlv6bT
	pj097XfqpIwyUfpp38lt5QiTF4dZHHflE8hrQWFBejJ4QFzWEv4h2jl+MKAI7xGlfy01LLSh3NwLS
	9S7bgbiYFPxgc4gJG+nFjPtFD5r6tYjPuiePGXxxWge6BV1iBdV5KPXrL1N31G7QMnnVJZr3FhrO9
	ATSRbxck+V+LAfwROGR+ZZ4e0thxeZqzUWiQsa9qxva06M9rlXuWT+H9OAgg4NiJGMpdyrj86svTv
	N96odu0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQSN-0007OR-1d; Wed, 03 Jun 2020 10:17:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQSF-0007Nv-2k
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 10:17:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D3E6D3FCA;
 Wed,  3 Jun 2020 12:16:59 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 72271ddc;
 Wed, 3 Jun 2020 12:16:44 +0200 (CEST)
Date: Wed, 3 Jun 2020 12:16:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stan Grishin <stangri@melmac.net>
Message-ID: <20200603101658.GB3056@meh.true.cz>
References: <CALu2O0SgR3FGgJ6epuQsmeZFxTsd0czNHaX3N0wQRgWYKWwbUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALu2O0SgR3FGgJ6epuQsmeZFxTsd0czNHaX3N0wQRgWYKWwbUQ@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_031703_425959_F6DDD7CF 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] new functionality for service shell function
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Stan Grishin <stangri@melmac.net> [2020-04-13 04:16:25]:

Hi,

> I've been using something similar on my system and propose the following
> patch (first submission to the list, be gentle ;)):

no worries, just read https://openwrt.org/submitting-patches and try again :-)

Commit subject should be "base-files: ..." and mail "Subject: [PATCH]
base-files: ...", easily done with `git format-patch -s1 ...`, then `git
send-email` and you're done.

Please add as well some proper commit description.

Thanks.

-- ynezz

> diff --git a/package/base-files/files/etc/profile
> b/package/base-files/files/etc/profile
> index 0beff1608f..e8350cfd6a 100644
> --- a/package/base-files/files/etc/profile
> +++ b/package/base-files/files/etc/profile
> @@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.
>  --------------------------------------------------
>  EOF
>  fi
> +
> +service() {
> +        if [ "$1" = "list-enabled" ]; then
> +                for F in /etc/init.d/* ; do
> +                        $F enabled && echo "$F enabled"
> +                done;
> +        elif [ "$1" = "list-disabled" ]; then
> +                for F in /etc/init.d/* ; do
> +                        $F enabled || echo "$F disabled"
> +                done;
> +        elif [ -f "/etc/init.d/$1" ]; then
> +                /etc/init.d/$@
> +        else
> +                echo "Usage: service list-disabled|list-enabled|<service>
> [command]"
> +                if [ -n "$1" ]; then
> +                        echo "service "'"'"$1"'"'" not found, the
> following services are available:"
> +                        ls "/etc/init.d"
> +                fi
> +                return 1
> +        fi
> +}
> diff --git a/package/base-files/files/etc/rc.common
> b/package/base-files/files/etc/rc.common
> index 7c11544405..c44614d757 100755
> --- a/package/base-files/files/etc/rc.common
> +++ b/package/base-files/files/etc/rc.common
> @@ -67,13 +67,14 @@ help() {
>  Syntax: $initscript [command]
> 
>  Available commands:
> - start Start the service
> - stop Stop the service
> - restart Restart the service
> - reload Reload configuration files (or restart if service does not
> implement reload)
> - enable Enable service autostart
> - disable Disable service autostart
> - enabled Check if service is started on boot
> + start Start the service
> + stop Stop the service
> + restart Restart the service
> + reload Reload configuration files (or restart if service does not
> implement reload)
> + enable Enable service autostart
> + disable Disable service autostart
> + enabled Check if service is started on boot
> + status-ubus Show ubus info for the service
>  $EXTRA_HELP
>  EOF
>  }
> @@ -165,6 +166,13 @@ ${EXTRA_HELP}"
>   }
>  }
> 
> -ALL_COMMANDS="start stop reload restart boot shutdown enable disable
> enabled depends ${EXTRA_COMMANDS}"
> -list_contains ALL_COMMANDS "$action" || action=help
> +status_ubus() {
> + name="$(basename "${initscript}")"
> + /bin/ubus call service list "{'name': '$name'}"
> + return 0
> +}
> +
> +ALL_COMMANDS="start stop reload restart boot shutdown enable disable
> enabled depends status-ubus ${EXTRA_COMMANDS}"
> +list_contains ALL_COMMANDS "$action" && action="${action/-/_}" ||
> action=help
>  $action "$@"
> +

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
