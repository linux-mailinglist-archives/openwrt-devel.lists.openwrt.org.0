Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20B11F84CD
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 21:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fDGgzHIhhsw2uLqBWgMmuWu4nzyf1OmqNsFSI9e3bk8=; b=sK3
	Oj84FsIrg6vl9RgDmYI7wSA5cK4cb304+LW7dJccwSB/lcGheR+whnhwbeoL0DgkEenX6isYEV7BU
	87U7vs2TUMDOydKBXc2tB/1Lbq7K3x3q7JNx4H9+Rf3DONvtfmTYsnmPjuhLaKxWagPAUL6t+G8rY
	a0hJ9JnnE5maSiNcvLJsxN5qKT6gzFBfwrYOmK3+G94jorH+o3C6oXWSjXin4dMsUfrhtBwFo12Uh
	bvOowAng2BrgHU+hGMS7fjPQp2DMMU2aZKFGLPB7eoaoFLs84/Nfn/+faMWHVruSqRJsk4kBTRZJb
	lA5oTMqecU+YFP3vU712PLAET/OpCYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkBOz-0007Tx-JK; Sat, 13 Jun 2020 19:01:13 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkBOs-0007TW-Fw
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 19:01:07 +0000
Received: by mail-io1-xd34.google.com with SMTP id t9so13725903ioj.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jun 2020 12:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=GSiU7argeoPRYJ7go/i9ZQTHHU4QHhWXkKwhFT2AZvs=;
 b=FAkx542q/rmS1zMMMvgPFrDAk/YjL6bb5sy6jwHZdluzQqmUOWPPFFfUaxgr6fjTh0
 kHqMnl9k6vYiAioykOosLJ8LpVSgRuvdeKJChsNDvyMw6GWOx9C4WhzhDIcQiRVZ6t/N
 WUrPikXamgUXjD6TuUbDvmOhtMZHfQ2sY9JiYMPlsZCfe7Rxl9MOhUE2Xa9gDqum5Dos
 VAkSRq5wexMyArt5NGNRcVc/ONCqh72wLJqkU9VgIDWqyGkVPXenzaGtfF2W7A3yfuSE
 zpqEantDLJbKCBADb76LT3sGFdK97q2Ii2PyiOpOYvQs3CGZVCYbrZ89vM3Cu1to20Q0
 4WVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GSiU7argeoPRYJ7go/i9ZQTHHU4QHhWXkKwhFT2AZvs=;
 b=UfFr8rvPP57v6fajpJfklaFufrpxNIBsfo6p7yO7gLZGEqg/3FomNwfM3M0Z14p0z4
 LMuYwC3O5fhLOmBxG1gQIOhV7RlmSKUH9bwRsy2C53ojvrFY8P/lIQYAWWv6TrOKh0oB
 mbWx4pE1IgfShixkEjxfpu4YRlSUaaU0bH8toISbtZHrH3FLZ2OR/c4ffykgeQIQTeut
 8Uj2AMn/dgPVvJUFp6BRgsk33Bxnq+hASq1MfJrw25UTWa7OQ7O5ENc2dqX4ZRpDTwWa
 edknCQhb5by+3GHFNM6GiLW4dYDmQzWRxbDnA4M3JQaKNiILJaqKHPJAM0qWGDMynzg5
 Vf1A==
X-Gm-Message-State: AOAM533EdOQz4JezUgJ+rhpgnJM9N6Tvrpox+cTqdACGVTY8X5nebhPp
 WGh9m1juXj4Onm9OhVYCXZ3bLT/HF4Qs8OPteGCRImM24q+DDQ==
X-Google-Smtp-Source: ABdhPJxLkk6g8v0Ssw9lcJ5E7//klVUWzoR7u/Fnm41LajA0R3K0lPNjQlMojx7G3g3bjWWgvfJWX+Vb1Yvt6VbV0So=
X-Received: by 2002:a05:6638:d08:: with SMTP id
 q8mr13547866jaj.77.1592074864574; 
 Sat, 13 Jun 2020 12:01:04 -0700 (PDT)
MIME-Version: 1.0
From: Joe Ayers <joe@ayerscasa.com>
Date: Sat, 13 Jun 2020 14:00:51 -0500
Message-ID: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_120106_577798_A56FB698 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] newer mikrotik boards not booting?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Anyone else seeing this on recently purchased  Mikrotik models?
Installing openwrt 19.07.03 on a Mikrotik LHG 5 boots, initfs and
appears to succeed with sysupgrade.  Then the device is in an infinite
boot loop.   It appears there's no console configured in routerboot to
see what it is doing.  Any pointers to turn on?

Note, I'm working with another individual seeing this on a new LHG 5
model device.  I have reproduced and tested on a newly purchased SXTsq
5HPnD, which has a motherboard labeled "LHG 5HPnD".   Prior SXTsq
5HPnD  and LHG 5HPnD models  have been working fine.

[admin@MikroTik] /system routerboard> print
       routerboard: yes
        board-name: SXTsq 5
             model: RouterBOARD SXTsq 5HPnD
     serial-number: xxxxxxxxxxxx
     firmware-type: ar9344L
  factory-firmware: 3.41
  current-firmware: 3.41
  upgrade-firmware: 6.47

No baud-rate options?

[admin@MikroTik] /system routerboard settings> print
              auto-upgrade: no
               boot-device: nand-if-fail-then-ethernet
      regulatory-domain-ce: no
             cpu-frequency: 600MHz
             boot-protocol: bootp
       force-backup-booter: no
               silent-boot: no
      protected-routerboot: disabled
      reformat-hold-button: 20s
  reformat-hold-button-max: 10m

sysupgrade log:

Commencing upgrade. Closing all shell sessions.
Watchdog handover: fd=3
- watchdog -
Sending TERM to remaining processes ... crond uhttpd xinetd sh dnsmasq
sh ntpd netifd hostapd [  146.589174] device wlan0 left promiscuouse
[  146.593957] br-lan: port 2(wlan0) entered disabled state
sleep sleep ubusd urngd logd rpcd
Sending KILL to remaining processes ...
/lib/upgrade/stage2: line 126: [-x: not found
Performing system upgrade...
Unlocking firmware ...

Writing from <stdin> to firmware ...
Upgrade completed
Rebooting system...
umount: can't unmount /dev: Resource busy
umount: can't unmount /tmp: Resource busy
umount: can't unmount /: Invalid argument
[  185.682795] Removing MTD device #1 (hard_config) with use count 1
[  185.690133] reboot: Restarting system

regards,
Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
