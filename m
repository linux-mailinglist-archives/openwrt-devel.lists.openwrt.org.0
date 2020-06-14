Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D4B1F8A57
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 21:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Peuj6SKXHsmvqAxo2+u9wBNrNTvk5xtKsKGq2O8Mn/o=; b=AwTYq4s789gWsF
	VQPt0Oq6ztPzZcovc2CECGrCkOprSDXMAUIgiu5b4nBxwpQmlNo3CBKOkkNDkw6jZMIlvELD3WnA0
	PQc9ElbaWIxc8iNV6W+PuhhVKrSwvmeZgO0TqoY33U9JBe5/7E9l8ju51RxPwq3jOY+y8nVkdmtiU
	MHu7XSPENY/YT3uy9UW8WvxvmhcINE2gKSyEK6aPzzGuH7BMoptVS14j3auvnVApC6jqnhhm+eOqE
	7doRuAEEguPOZ8rl8eFMDnJmtRIJEjgg9T1QR89XsZOTAyIcRqLcBfU/eduyCi9jz3Utbv/+2SAT5
	voGrcqtw9oNWJWpLUM4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkY2Y-0008AS-8j; Sun, 14 Jun 2020 19:11:34 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkY2P-00089A-RP
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 19:11:27 +0000
Received: by mail-il1-x134.google.com with SMTP id l6so13379258ilo.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jun 2020 12:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TrkkH27kmWaD5pkiomCVJCDebEMt6NQtv/PlNuhiUEw=;
 b=W6rY7Uy7CFVPpuHNrma2Itk9YVIXh6bvrMzG2bXDdhtt60F6JCPA1YSBkJqrY8bdff
 ILuGZGi1y1hWq8Ob/j6ZPdBe+fcOewHt9hfsn+Y1sUSypX/fmLwAXBQ8kA/eyu7KdODn
 kEGcHFGoTXntlI/BnwEHJAiS/PVLQprEzkmg7Flq0kiMiPw2sEMAsvshrAHeLaUIXDrE
 vJgUDChS8+6VlAYTGH+enc7S5ixJdLuWKfwML28eosYxL5ThNNRNSiGby8Hgva5B88mJ
 3FnjAoLMSAv4xKWZpvUxivWkeHXUewLHHgDHKos7TB9jrhYazSyDQ8I78rw3juoiY7Zz
 7mow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TrkkH27kmWaD5pkiomCVJCDebEMt6NQtv/PlNuhiUEw=;
 b=OvVE2tONxrcQLfqhlbzeuYmwPlBBS1CGI1q4kzp1MO5a2sSSfriMuWw2g4tSqDn0zM
 NQwyVoUN0P4GpA4DnnVFoZn3wno4dUHTpviyA9kE3lBFHAa/G533i/tJZDGgiJLwUjFW
 DM9zHAkkKR2r154XhIZfWcGaRvkhKzk8SKGWmhJjHlQoz3AkjXqiQAzaAZcjcDwyeXYg
 bp8mcYc5Uy81e9+BT7IbLCeTRucBSIJaUjzx05IQQ3z3BoEGyFwZR3ATlvSVOGtSZ4MU
 LX/v7fWIFUCRyL0pHcyfr55WP+QE812vf+LdL5tu0I12Eh6ybNj/bXkK4IiHwueMb0JK
 JrMQ==
X-Gm-Message-State: AOAM530mkO8VJE2jwM48bm4pGWNyPVkapiHt03JU8Y66V/oTAdX+ex70
 7CNOIa91wSgUMeq0LcCNCVSNUrrPTO9Rsfr6tDJbvQqefZk=
X-Google-Smtp-Source: ABdhPJyG0us2w3EwVCCyk+UhcGU5J5BErBOjC6yWf9r6Fg3E2YcE0oOAKAIA+BpFmcvF8QJEKQQEezn2tob53tedTy0=
X-Received: by 2002:a92:290c:: with SMTP id l12mr22350495ilg.279.1592161884380; 
 Sun, 14 Jun 2020 12:11:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
 <5b7684ce-e7f3-d6e9-7bfb-ff9f1923a63c@guifi.net>
In-Reply-To: <5b7684ce-e7f3-d6e9-7bfb-ff9f1923a63c@guifi.net>
From: Joe Ayers <joe@ayerscasa.com>
Date: Sun, 14 Jun 2020 14:11:04 -0500
Message-ID: <CAALvt2NAr9MAmKmdK7XNqiNNpcp+6GnPc24F9CHgn7AsrWSUVg@mail.gmail.com>
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_121125_948812_8EA1384D 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] newer mikrotik boards not booting?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > Anyone else seeing this on recently purchased  Mikrotik models?
> > Installing openwrt 19.07.03 on a Mikrotik LHG 5 boots, initfs and
> > appears to succeed with sysupgrade.  Then the device is in an infinite
> > boot loop.   It appears there's no console configured in routerboot to
> > see what it is doing.  Any pointers to turn on?
> Is it the same with 19.07.2 or 19.07.1? Just to make sure it's not a
> regression in OpenWrt.

19.07.3 and 19.07.2 have the same behavior -- after flashing, infinite
boot loop.

> > Note, I'm working with another individual seeing this on a new LHG 5
> > model device.  I have reproduced and tested on a newly purchased SXTsq
> > 5HPnD, which has a motherboard labeled "LHG 5HPnD".   Prior SXTsq
> > 5HPnD  and LHG 5HPnD models  have been working fine.
>
> When you boot via TFTP, can you check whether the dmesg lines "Kernel
> command line" are the same on older and newer devices?
>

not working -- new device,  openwrt image, 19.07.2, from initramfs boot:

[    0.000000] Kernel command line: no-uart no-nand parts=1
boot_part_size=16777216 gpio=228923 HZ=300000000 mem=64M
kmac=74:4D:28:6A:28:F4 board=lhg hw_opt=00284001 boot=0 mlc=11
console=ttyS0,115200 rootfstype=squashfs noinitrd

not working -- new device, openwrt image, 19.07.3, from initramfs boot:

[    0.000000] Kernel command line: no-uart no-nand parts=1
boot_part_size=16777216 gpio=228923 HZ=300000000 mem=64M
kmac=74:4D:28:6A:28:F4 board=lhg hw_opt=00284001 boot=0 mlc=11
console=ttyS0,115200 rootfstype=squashfs noinitrd

Yes, working -- older LHG 5HPnD device, AREDN image based on 19.07.2,
flashed image boot (I don't have this device in hand to flash openwrt
image directly):

[    0.000000] Kernel command line: no-uart no-buzzer no-nand parts=1
boot_part_size=16777216 gpio=261675 HZ=300000000 mem=64M
kmac=64:D1:54:93:9E:A2 board=lhg ver=3.41 hw_opt=00284001 boot=1
mlc=11 console=ttyS0,115200 rootfstype=squashfs noinitrd

> > sysupgrade log:
> >
> > Commencing upgrade. Closing all shell sessions.
> > Watchdog handover: fd=3
> > - watchdog -
> > Sending TERM to remaining processes ... crond uhttpd xinetd sh dnsmasq
> > sh ntpd netifd hostapd [  146.589174] device wlan0 left promiscuouse
> > [  146.593957] br-lan: port 2(wlan0) entered disabled state
> > sleep sleep ubusd urngd logd rpcd
> > Sending KILL to remaining processes ...
> > /lib/upgrade/stage2: line 126: [-x: not found
>
> This last line does not look good, but I can't locate it in the source
> code :(
>

I can't reproduce, not sure what this error was all about.   Suggest
we ignore, unless further occurrences.

19.07.2 sysupgrade on new device.   From cpuinfo, "MikroTik
RouterBOARD SXTsq 5HPnD", with motherboard label "LHG 5HPnD":

root@OpenWrt:/tmp# sysupgrade -n -F
openwrt-19.07.2-ar71xx-mikrotik-rb-nor-flash-16M-squashfs-sysupgrade.bin
Device unknown not supported by this image
Supported devices: rb-750-r2 rb-750up-r2 rb-750p-pbr2 rb-911-2hn
rb-911-5hn rb-931-2nd rb-941-2nd rb-951ui-2nd rb-952ui-5ac2nd
rb-962uigs-5hact2hnt rb-lhg-5nd rb-map-2nd rb-mapl-2nd rb-wap-2nd
rb-wapr-2nd rb-sxt-2nd-r3
Sysupgrade is not yet supported on unknown.
Image check failed but --force given - will update anyway!
Commencing upgrade. Closing all shell sessions.
Watchdog handover: fd=3
- watchdog -
killall: telnetd: no process killed
Sending TERM to remaining processes ... netifd odhcpd uhttpd ntpd
dnsmasq ubusd urngd logd rpcd
Sending KILL to remaining processes ...
Performing system upgrade...
Unlocking firmware ...

Writing from <stdin> to firmware ...
Upgrade completed
Rebooting system...
umount: can't unmount /dev: Resource busy
umount: can't unmount /tmp: Resource busy
umount: can't unmount /: Invalid argument
[ 1082.724168] reboot: Restarting system

19.07.3 sysupgrade on new device.   From cpuinfo, "MikroTik
RouterBOARD SXTsq 5HPnD", with motherboard label "LHG 5HPnD":

root@OpenWrt:/tmp# sysupgrade -n -F
openwrt-19.07.3-ar71xx-mikrotik-rb-nor-flash-16M-squashfs-sysupgrade.bin
Device unknown not supported by this image
Supported devices: rb-750-r2 rb-750up-r2 rb-750p-pbr2 rb-911-2hn
rb-911-5hn rb-931-2nd rb-941-2nd rb-951ui-2nd rb-952ui-5ac2nd
rb-962uigs-5hact2hnt rb-lhg-5nd rb-map-2nd rb-mapl-2nd rb-wap-2nd
rb-wapr-2nd rb-sxt-2nd-r3
Sysupgrade is not yet supported on unknown.
Image check failed but --force given - will update anyway!
Commencing upgrade. Closing all shell sessions.
Watchdog handover: fd=3
- watchdog -
killall: telnetd: no process killed
Sending TERM to remaining processes ... netifd odhcpd uhttpd ntpd
dnsmasq ubusd urngd logd rpcd
Sending KILL to remaining processes ...
Performing system upgrade...
Unlocking firmware ...

Writing from <stdin> to firmware ...
Upgrade completed
Rebooting system...
umount: can't unmount /dev: Resource busy
umount: can't unmount /tmp: Resource busy
umount: can't unmount /: Invalid argument
[  304.564494] Removing MTD device #1 (hard_config) with use count 1
[  304.571849] reboot: Restarting system

Same result with 19.07.2 and 19.07.3,  device in infinite boot loop.

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
