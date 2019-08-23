Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEB89B8BF
	for <lists+openwrt-devel@lfdr.de>; Sat, 24 Aug 2019 01:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3I3r1b7TpVAH8V0cq7o5DfxsASHC/f+4rFkw490FWuk=; b=qFH
	PGjkb9qetLKBzQ4ERAnL7iyc+FE+d4o605chVrS4NmtksmXSD28ve0WtWPQBRXPPtrFCypNFMdwRu
	i3WXY5/V0yKI6aVUILeZRzMsKRZriIa1v+xlZrhMAYqMNfbiuSFplyyUemhHzytYRtq1oSe88AL3h
	dwKCfmRFQY1mgyqeykiJJyB4fwrN++uq1ObIQuXIVt+ruS5kVj4pBOag91NZzQTR/mXObrBpur/Uh
	RN9mSKVqdRTc+rJ3NCah+2BGcCr/BVW2j/HPKwU7MOxozfXJDDGJf7V68ELviEdjScqDaEtiP+Yt6
	KtkWO21uiGyjqiWDvuFNsLhQ++5Teng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Iln-0000o5-If; Fri, 23 Aug 2019 23:14:59 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Ild-0000ng-O4
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 23:14:54 +0000
Received: by mail-wr1-x42c.google.com with SMTP id s18so10011863wrn.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 16:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=IwhNt6c5AU/XxtEVp+vFm8RsRMfJ2qWVmEi12RWVvk8=;
 b=EYDK2u8bJmppWqZ5q+Z7s16ds4cIQ8sL0RQFYAmJ4AKlt7RUyK3CKAh8RODrT8iaim
 2tXEEBPGBdB67xtvh+T0OeDO5vERTOLC9EcVvCm6lTZurREBGIhcmpvIFzWOvK9y+bRQ
 4WrfcGYXXF+XE1xYl92VnmuRyGIFdti2wed7BC1i4RFJGz9vrCEyWyHiLfawbtIe5tKn
 Q6I6Vfmg2eJP8bDvlC++P7U55OSlSglu+k5Xakx6U66L1F4zcYItOmj4tmU1i4bnReOx
 sphjzGZpk98vJAroZNjBdj/2VTBX7/ebj/mDnmSqqDI6TbfmMFM/73jyvpbGL65AS/Q3
 1WEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=IwhNt6c5AU/XxtEVp+vFm8RsRMfJ2qWVmEi12RWVvk8=;
 b=bZWq5YFi+6Dub/TAqbzBsYNkq27kQ5veSPMoYwV9iySmQiuYCG0/VjDehqeQxFSori
 dmNDOes4I2REkO89D0NE006aFrnxCuwFOiyzlPB+Jyvgk6nZVQB6jmbTP9racmmzlyoF
 LwXNkP28Mpvrjj48KUJnLOu6WP7FTSwJtbA4cE0kcdsqkBfp9tSdMe5gfUKyirdxEx0u
 WMwE0MU/Vqiz5H5Rkrq6eJXgA7+6gKeOpJ67HiutaiKY2uZUt8RBkNRmksJeOKxYQ+ff
 /mhh9ucZ7q6jgDj7z7D2DrMYSXv3cap74C0bYx12YI6R1q30ANV8Q5frnqikTdGGupsh
 ssjA==
X-Gm-Message-State: APjAAAXymr+ygFowsnxhGiKgGP8YzbSrTB8tLb3YFLFm+zGJ/a/ppJ31
 XShJTRahzZLIZeKsOui5XMmGNbfc
X-Google-Smtp-Source: APXvYqztMrpu1aJvcPqgqTaa7+ilQ/dl6LbpH/gmJ3NYLK5MEx9rW5wgw2I6kj/05xcVNoirPJQnJQ==
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr7174670wrp.189.1566602084498; 
 Fri, 23 Aug 2019 16:14:44 -0700 (PDT)
Received: from gatosaldo (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id o25sm3423481wmc.36.2019.08.23.16.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 16:14:43 -0700 (PDT)
Date: Sat, 24 Aug 2019 01:14:40 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-66850419-1566602064=:6377"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_161449_973692_7B28B20E 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Petr Cvek <petrcvekcz@gmail.com>,
 john@phrozen.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-66850419-1566602064=:6377
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

Sat, 24 Aug 2019 01:14:40 +0200 (CEST)ear OpenWRt list,
I was looking at trying to add support to the FRITZ!BOX 3272 to OpenWRt.
It is based on the Lantiq AR10 platform - for which I wasn't able to find any informations, even tought I see kernel code to support it is already available.
From where may I start ?
E.g.: is there any similar devices or places I might start looking?

I see there is EVA - I ad only a minimal experience with ADAM so any hint on useful commands would be good. I guess I may also GET the flash partitions with an FTP client?

Attached the bootlog of the device via UART, where you can see it has two flash chips: a NOR for boot I guess, and a NAND for the OS.
Thanks!!

reboot
starting pid 1414, tty '/dev/ttyS0': '/bin/sh -c /var/post_install'
# telefon: SIGTERM received!
stopping USB-Subsystem ..
killall: printserv: no process killed
ls: /var/USB-*-bus-usb-*: No such file or directory
USB-Subsystem .. stopped
stopping WLAN ...
rc.wlan: Stop WLAN...
WLAND_CTL:wland_hello_response: hello response, status: 0, user_data: (nil), version: 257
WLAND_CTL:wland_ctl exit (rc = 0)
WLAN ... stopped
ls: /proc/1198/fd: No such file or directory
ls: /proc/1201/fd: No such file or directory
unmounting '/var/media/ftp/*' ..
[1415]++ ++ do internalflash 'prepare unmount'... ++ ++
ls: /proc/1607/cwd: No such file or directory
[1415]++ ++ ...done ++ ++
unmounting '/var/dev/nand' ..
unload dsl and dependend driver ..
[dsl_sds] stopping ar10 dsl....
[dsl_sds] killing ar10 dsl processes....
[dsl_sds] stop oamd...
[dsl_sds] oamd stopped
[dsl_sds] check if dsl_control is running
[dsl_sds] exit dsl_control...


----- Start supportlog: -----
01:00:29: open
WLAND:[01092]:01:00.29/[29.59]:derived config 'AP off', ID: 5 (0x00000000)
WLAND:[01092]:01:36.38/[2198.24]:Unload 'libwlanrext'((nil))
WLAND:[01092]:01:36.38/[2198.24]:util_deinit:28: ENTER
----- End supportlog -----

AVM safe quit dsl_control
turn off autoboot...

quit dsl_control...

[dsl_sds] dsl_control exited
[dsl_sds] killed ar10 dsl processes
[dsl_sds] invoke notify_avmnet_hw_exit
[dsl_sds] stop dsl_monitor
/etc/init.d/e40-dsl: line 61: syntax error: unterminated quoted string
+ ps
+ grep -v grep
+ grep -q dtrace
+ lsmod
Module                  Size  Used by    Tainted: P 
userman_mod            88438  2 
krtp                  147669  0 
kdsldmod             1907296  7 userman_mod
drv_dsl_cpe_api       334726  0 
ifxmips_mei            37777  1 drv_dsl_cpe_api
ifxusb_host           112960  0 
usbcore               173244  2 ifxusb_host
capi_codec            433638  0 
isdn_fbox_fon5        838358  2 krtp
pcmlink               416391  3 capi_codec,isdn_fbox_fon5
rtc_avm                 5880  1 pcmlink
led_modul_Fritz_Box_HW198   110703  4 
+ echo stopping modules using ubik2/pcmlink ..
stopping modules using ubik2/pcmlink ..
+ lsmod
+ grep -q ulpcmlink
+ lsmod
+ grep -q dect_io
+ lsmod
+ grep -q avm_dect
+ lsmod
+ grep -q pcmlink
+ rmmod pcmlink
rmmod: can't unload 'pcmlink': Resource temporarily unavailable
+ set +x
still running:
   PID USER       VSZ STAT COMMAND
     1 root      1312 S    init
     2 root         0 SW   [kthreadd]
     3 root         0 SW   [migration/0]
     4 root         0 SW   [ksoftirqd/0]
     5 root         0 SW   [watchdog/0]
     6 root         0 SW   [migration/1]
     7 root         0 SW   [ksoftirqd/1]
     8 root         0 SW   [watchdog/1]
     9 root         0 SW   [yield_w/0]
    10 root         0 SW   [yield_w/1]
    11 root         0 SW   [events/0]
    12 root         0 SW   [events/1]
    13 root         0 SW   [khelper]
    16 root         0 SW   [async/mgr]
    33 root         0 SW   [sync_supers]
    34 root         0 SW   [bdi-default]
    36 root         0 SW   [kblockd/0]
    37 root         0 SW   [kblockd/1]
    56 root         0 SW   [kswapd0]
    57 root         0 SWN  [ksmd]
    58 root         0 SW   [aio/0]
    59 root         0 SW   [aio/1]
    73 root         0 SW   [pm_info]
    80 root         0 SWN  [avm_debugd]
   106 root         0 SW   [mtdblockd]
   117 root         0 DW   [ifx_ssc]
   128 root         0 SW   [l2tp]
   132 root         0 SW   [tffsd]
   133 root         0 SW   [avmnet_workqueu]
   138 root         0 SW   [avmnet_timer]
   140 root         0 SW<  [loop0]
   180 root         0 SW   [yaffs-bg-1]
   270 root         0 SW   [cleanup_timer_f]
   367 root         0 SW   [capi_pipew/0]
   368 root         0 SW   [capi_pipew/1]
   369 root         0 SW   [capi_schedw/0]
   370 root         0 SW   [capi_schedw/1]
   371 root         0 SW   [pcmlink_ctrl/1]
   372 root         0 SW   [capitransp]
   444 root      1308 S    tail -f /nohup.out
   448 root      1332 S <  /sbin/udevd --daemon
   461 root         0 SW   [khubd]
   655 root      1308 S <  /sbin/udevd --daemon
   656 root      1308 S <  /sbin/udevd --daemon
   744 root      2444 S    /bin/configd
   768 root      3304 S    avmipcd
   871 root      4492 S    dsl_monitor -d
   882 root         0 DW   [pmex_ne]
   883 root         0 DW   [pmex_fe]
  1004 root      4048 S    l2tpv3d
  1011 root     18908 S    ctlmgr
  1017 root      8668 S    upnpd
  1025 root      5472 S    multid
  1078 root      3628 S    pcpd
  1082 root      4080 S    upnpdevd
  1109 root      5528 S    dsld -i -n
  1145 root      3952 S    pbd
  1157 root      7936 S <  voipd
  1214 root      1312 S    /usr/sbin/inetd
  1220 root      2292 S    /usr/bin/boxnotifyd
  1228 root      1180 S    /bin/run_clock -c /dev/tffs -d
  1237 root      1324 S    -/bin/sh
  1240 root      4156 S    usermand
  1318 root      2708 S    /sbin/nmbd
  1413 root         0 SW   [flush-31:0]
  1414 root      1304 S    /bin/sh -c /var/post_install
  1415 root      1320 S    {exe} ash /var/post_install
  2272 root         0 SW   [autbtex]
  2297 root      1304 R    ps
Module                  Size  Used by    Tainted: P 
userman_mod            88438  2 
krtp                  147669  0 
kdsldmod             1907296  7 userman_mod
drv_dsl_cpe_api       334726  0 
ifxmips_mei            37777  1 drv_dsl_cpe_api
ifxusb_host           112960  0 
usbcore               173244  2 ifxusb_host
capi_codec            433638  0 
isdn_fbox_fon5        838358  2 krtp
pcmlink               416391  3 capi_codec,isdn_fbox_fon5
rtc_avm                 5880  1 pcmlink
led_modul_Fritz_Box_HW198   110703  4 
system is going down ..
disable watchdog ...
The system is going down NOW!
Sent SIGTERM to all processes
notifyd[1220]: received signal Terminated
Jan  1 01:36:52 notifyd[1220]: terminating.
pbd[1145]: received signal Terminated
Jan  1 01:36:52 pbd[1145]: terminating.
Jan  1 01:36:52 dsld[1109]: udslinterface_destroy!!!(0x451d70)
Jan  1 01:36:52 dsld[1109]: udslinterface_destroy!!!(0x451de4)
Jan  1 01:36:52 dsld[1109]: fwnotify_server_notify: failed
Sent SRequesting system reboot

ROM VER: 1.1.0
CFG 05
** START 
RVEC bf200000
[-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\]
(AVM) EVA Revision: 1.1787 Version: 2787
(C) Copyright 2005 AVM Date: Jul  2 2013 Time: 14:06:16 (1) 3 0x0-0x640D

[FLASH:] MACRONIX Uniform-Flash 256kB 256 Bytes WriteBuffer
[FLASH:](Eraseregion [0] 4 sectors a 64kB) 
[NAND:] 128MB MICRON 2048 Pagesize 128k Blocksize 1024 Blocks 8Bit 1 CS HW
[SYSTEM:] AR10 on 500MHz/250MHz/250MHz

..
Eva_AVM >##..................................................
Lantiq xDSL CPE AR10
[    0.000000] Linux version 2.6.32.61 (jpluschke@GU_C16i_ar10) (gcc version 4.8.1 (Buildroot 2013.05) ) #1 SMP Tue Mar 21 18:31:39 CET 2017
[    0.000000] phym = 08000000, mem = 08000000, max_pfn = 00008000
[    0.000000] Reserving memory for CP1 @0xa8000000, size 0x00000000
[    0.000000] [init_avm_kernel_config] AVM Kernel Config (ptr 806ca000)
[    0.000000] [init_avm_kernel_config] AVM Kernel Config: module memory entry
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU revision is: 00019556 (MIPS 34Kc)
[    0.000000] Determined physical RAM map:
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Zone PFN ranges:
[    0.000000]   Normal   0x00000000 -> 0x00008000
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[1] active PFN ranges
[    0.000000]     0: 0x00000000 -> 0x00008000
[    0.000000] [module-alloc-by-name] 'modulemem' not in use, use AVM Kernel Config (10665984 bytes, reserved for module mem)
[    0.000000] [module-alloc] use 0xa2c000 bytes at 0x81101000
[    0.000000] 1 available secondary CPU TC(s)
[    0.000000] PERCPU: Embedded 7 pages/cpu @81b31000 s5760 r8192 d14720 u65536
[    0.000000] pcpu-alloc: s5760 r8192 d14720 u65536 alloc=16*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 32512
[    0.000000] Kernel command line: console=ttyS0,115200n8r nor_size=0MB sflash_size=256KB nand_size=128MB ethaddr=5C:49:79:DB:93:0C 
[    0.000000] [NAND] nand_size = 0x8000000
[    0.000000] PID hash table entries: 512 (order: -1, 2048 bytes)
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] wait instruction: r4k_wait_irqoff
[    0.000000] [avm_cache_set_coherency]: setting cache coherency for HWRevision=198 to write back allocate 
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.000000] Writing ErrCtl register=0004dcc0
[    0.000000] Readback ErrCtl register=0004dcc0
[    0.000000] Memory: 111584k/131072k available (4787k kernel code, 19304k reserved, 2160k data, 212k init, 0k highmem)
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:181
[    0.000000] [mips_cpu_irq_init] irq_base 0
[    0.000000] SRSConf0 0x3ffffbfe: SRS1: 0xffffffff, SRS2 0xffffffff, SRS3 0xffffffff
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [ttyS0] enabled, bootconsole disabled
[    0.000000] console [ttyS0] enabled, bootconsole disabled
[    0.020000] Calibrating delay loop... 332.59 BogoMIPS (lpj=1662976)
[    0.240000] Security Framework initialized
[    0.240000] Mount-cache hash table entries: 512
[    0.250000] kernel_init: started
[    0.250000] kernel_init: kernel locked
[    0.250000] Limit of 2 TCs set
[    0.250000] TLB of 32 entry pairs shared by 2 VPEs
[    0.250000] VPE 0: TC 0, VPE 1: TC 1
[    0.250000] IPI buffer pool of 8 buffers
[    0.260000] CPU revision is: 00019556 (MIPS 34Kc)
[    0.440000] system-load 1 loadavg 0.0 0.0 0.0 - 8 tasks:0 % curr:swapper(0 %) max:swapper(0 %, pid:1) pgstat: sum=27899 free=27801 slab=188 alloc=0/s fault=0/s (sleep 0)
[    0.490000] TC 1 going on-line as CPU 1
[    0.500000] Brought up 2 CPUs
[    0.500000] [yield_context_init] cpu=1 tc=2 mask=220c
[power_managment_setup] reset 'DSL, DFE, AFE, VOICE, DSLTC, ARC'
[power_managment_setup] power down 'PPE TC, PPE EMA, LEDC, DFEV1, DFEV0'
[power_managment_setup] power down 'MSI1, PDI1 PCIE1 PCIE1_PHY'
[power_managment_setup] power down 'USB CTRL'
[power_managment_setup] power down 'GPHY'
[power_managment_setup] disable power domain 'DSL + DFE'
[    0.540000] NET: Registered protocol family 16
[    0.550000] Lantiq GPIO driver, version 1.3.2, (c) 2001-2013 Lantiq Deutschland GmbH
[    0.560000] Reboot Status is: Soft-Reboot
[    0.560000] !!!!!!! WAVE400 system registeration on AHB 
[    0.560000] MTLK_MEM_BAR0_START is 3e00000
[    0.570000] MTLK_MEM_BAR0_END is 3efffff
[    0.570000] MTLK_MEM_BAR1_START is 1a000000
[    0.570000] MTLK_MEM_BAR1_END is 1a7fffff
[    0.580000] MTLK_WIRELESS_IRQ_IN_INDEX is 20
[    0.580000] [avmnet] [avmnet_cfg_init] Driver version: 6.247.3.1  -  Revision 1496:3665  -  Di 21. Mär 18:29:49 CET 2017
[    0.900000] Lantiq PCIe Root Complex driver, version 2.0.0, (c) 2001-2013 Lantiq Deutschland GmbH
[    0.910000] bio: create slab <bio-0> at 0
[    0.910000] ifx_pcie_rc_class_early_fixup port 0: fixed pcie host bridge to pci-pci bridge
[    0.920000] pci 0000:00:00.0: PME# supported from D0 D3hot
[    0.920000] pci 0000:00:00.0: PME# disabled
[    0.930000] pci 0000:01:00.0: PME# supported from D0 D1 D3hot
[    0.930000] pci 0000:01:00.0: PME# disabled
[    0.940000] pci 0000:00:00.0: PCI bridge, secondary bus 0000:01
[    0.940000] pci 0000:00:00.0:   IO window: disabled
[    0.950000] pci 0000:00:00.0:   MEM window: 0x1c000000-0x1c0fffff
[    0.950000] pci 0000:00:00.0:   PREFETCH window: 0x1c100000-0x1c1fffff
[    0.960000] NET: Registered protocol family 8
[    0.960000] NET: Registered protocol family 20
[    0.970000] NET: Registered protocol family 2
[    0.970000] IP route cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.970000] TCP established hash table entries: 4096 (order: 3, 32768 bytes)
[    0.970000] TCP bind hash table entries: 4096 (order: 4, 81920 bytes)
[    0.980000] TCP: Hash tables configured (established 4096 bind 4096)
[    1.000000] TCP reno registered
[    1.000000] avm_pa: try to activate hw accelaration for pid 1 (ipv4)
[    1.010000] NET: Registered protocol family 1
[    1.030000] IFX DMA driver, version ifxmips_dma_core.c:v1.0.17 ,(c)2009 Infineon Technologies AG
[    1.030000]  skb_shared_size:344
[    1.040000] Lantiq CGU driver, version 1.1.32, (c) 2001-2013 Lantiq Deutschland GmbH
[    1.050000] squashfs: version 3.4 (2008/08/26) Phillip Lougher
[    1.060000] fuse init (API version 7.13)
[    1.060000] msgmni has been set to 218
[    1.070000] io scheduler noop registered (default)
[    1.070000] [avm_membench_init]
[    1.330000] avm_net_trace: Up and running.
[    1.340000] [loadcontrol] set auto - scale=1
[    1.340000] [avm] configured: watchdog event debug 
[    1.350000] AVM_WATCHDOG: Watchdog Driver for AR7 Hardware (Version 1.0, build: Mar 21 2017 18:28:30)
[    1.360000] ifx_pmu_init: Major 247
[    1.360000] Lantiq PMU driver, version 1.2.6, (c) 2001-2013 Lantiq Deutschland GmbH
[    1.370000] Infineon Technologies RCU driver version 1.0.7 
[    1.370000] drivers/char/ifxmips_ts/ifxmips_ts_ar10.c:355:ts_init: ts_init
[    1.370000] 
[    1.380000] ttyS0 at MMIO 0x1e100c00 (irq = 107) is a PORT_IFX_ASC
[    1.400000] loop: module loaded
[    1.400000] nbd: registered device at major 43
[    1.420000] Generic platform RAM MTD, (c) 2004 Simtec Electronics
[    1.420000] Platform NOR MTD, (c) AVM 2010
[    1.420000] [NAND] nand_size = 0x1600000
[    1.430000] [NAND] read feature bytes (after setting hw ecc): P1=0x08|P2=0x00|P3=0x00|P4=0x00
[    1.440000] [NAND] Hardware-ECC activated
[    1.440000] Probe for NAND flash...
[    1.440000] NAND device: Manufacturer ID: 0x2c, Chip ID: 0xf1 (Micron NAND 128MiB 3,3V 8-bit)
[    1.450000] Scanning device for bad blocks
[    1.460000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x800 page: 0x2000)
[    1.490000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x800 page: 0x8240)
[    1.530000] Creating 8 MTD partitions on "ifx_nand":
[    1.530000] 0x000000000000-0x000000400000 : "reserved-kernel"
[    1.540000] 0x000000400000-0x000003400000 : "reserved-filesystem"
[    1.540000] 0x000003400000-0x000003800000 : "kernel"
[    1.550000] 0x000003800000-0x000006800000 : "filesystem"
[    1.560000] 0x000006800000-0x000006a00000 : "config"
[    1.560000] 0x000006a00000-0x000008000000 : "nand-filesystem"
[    1.570000] 0x000008000000-0x000008000000 : "nand-urlader"
[    1.570000] mtd: partition "nand-urlader" is out of reach -- disabled
[    1.580000] 0x000008000000-0x000008000000 : "nand-tffs"
[    1.580000] mtd: partition "nand-tffs" is out of reach -- disabled
[    1.590000] Lantiq SSC driver, version 2.4.1, (c) 2001-2013 Lantiq Deutschland GmbH
[    1.600000] Creating 3 MTD partitions on "ifx_sflash":
[    1.600000] 0x000000000000-0x000000020000 : "urlader"
[    1.610000] 0x000000020000-0x000000030000 : "tffs (1)"
[    1.610000] 0x000000030000-0x000000040000 : "tffs (2)"
[    1.620000] Lantiq SPI flash driver, version 1.1.9, (c) 2001-2013 Lantiq Deutschland GmbH
[    1.620000] tun: Universal TUN/TAP device driver, 1.6
[    1.630000] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    1.640000] IFX SWITCH API, Version 1.1.8.5
[    1.640000] SWAPI: Registered character device [switch_api] with major no [81]
[    1.650000] Switch API: PCE MicroCode loaded !!
[    1.650000] mice: PS/2 mouse device common for all mice
[    1.660000] i2c /dev entries driver
[    1.660000] CAPI Subsystem Rev 1.1.2.8
[    1.660000] AVM PA for Linux 2.6.32.61
[    1.670000] AVM PA skb pktinfo at offset 128 size 208
[    1.670000] [loadcontrol]module avm_pa registered
[    1.680000] IPv4 over IPv4 tunneling driver
[    1.680000] TCP cubic registered
[    1.690000] mcfw: IGMPv3 fast forwarding
[    1.690000] NET: Registered protocol family 10
[    1.690000] avm_pa: try to activate hw accelaration for pid 2 (ipv6)
[    1.700000] NET: Registered protocol family 17
[    1.700000] NET: Registered protocol family 8
[    1.710000] atmpvc_init() failed with -17
[    1.710000] KOAM is loaded successfully.
[    1.720000] l2tp_core: L2TP core driver, V2.0
[    1.720000] l2tp_ip: L2TP IP encapsulation support (L2TPv3)
[    1.730000] l2tp_netlink: L2TP netlink interface
[    1.730000] l2tp_eth: L2TP ethernet pseudowire support (L2TPv3)
[    1.740000] l2tp_ip6: L2TP IP encapsulation support for IPv6 (L2TPv3)
[    1.740000] <ifx_fix_timing>
[    1.750000] TFFS: tiny flash file system driver. GPL (c) AVM Berlin (Version 2.0)
[    1.760000]       mount on mtd9 and mtd10 (double buffering)
[    1.760000] TFFS Name Table L
[    1.780000] Adam2 environment variables API installed.
[    1.780000] AVM Simple Profiling enabled Version 3.0
[    1.790000] [simple-profiling]:2 performance counters implemented, NEW_34K
[    1.790000] [simple-profiling]Enable Performance Counter 0 for Data cache load/stores (User Supervisor Kernel Exception TC-ID=0) all cores tc: 0
[    1.810000] [simple-profiling]Enable Performance Counter 1 for Data cache load/store misses (User Supervisor Kernel Exception TC-ID=0) all cores tc: 0
[    1.820000] [simple-profiling]Enable Performance Counter 0 for Data cache load/stores (User Supervisor Kernel Exception TC-ID=1) all cores tc: 1
[    1.830000] [simple-profiling]Enable Performance Counter 1 for Data cache load/store misses (User Supervisor Kernel Exception TC-ID=1) all cores tc: 1
[    1.850000] [simple-profiling]Enable Performance Counter 0 for Main pipeline stalls (P) (User Supervisor Kernel Exception TC-ID=2) all cores tc: 2
[    1.860000] [simple-profiling]Enable Performance Counter 1 for Cycles (P) (User Supervisor Kernel Exception TC-ID=2) all cores tc: 2
[    1.870000] [simple-profiling]all cores:performance-mode (round-robin):  cpus on
[    1.880000] {avmnet_cfg_netinit}
[    1.880000] [avmnet] No config found for HWRev 198, HWSubRev 1, Profile-ID 0, trying base config for HWSubRev
[    1.890000] [avmnet] No config found for HWRev 198, HWSubRev 1, trying base config for HWRev
[    1.900000] [avmnet] [avmnet_swi_7port_init] Init on module swi_vr9 called.
[    2.060000] [avmnet] [reset_int_phy] Can not hard reset split GPHY phy_22F_2, doing MDIO reset
[    2.060000] [avmnet] [reset_int_phy] Can not hard reset split GPHY phy_22F_3, doing MDIO reset
[    2.220000] Loading AVM Net Common Datapath Driver for 7Port Switch...... 
[    2.230000] [ppe_eth_init] init_hw()
[    2.230000] [init_hw] ppe_hw_init=0xff successful
[    2.240000] [ppe_eth_init] ifx_proc_file_create()
[    2.240000] [ppe_eth_init] dma_setup_init()
[    2.250000] [avmnet] [avmnet_swi_7port_disable_learning] Configuring CPU-port to receive all unknown unicast frames 0x61
[    2.260000] [avmnet] [avmnet_swi_7port_disable_learning] Configuring CPU-port to receive all unknown multicast frames 0x61
[    4.650000] [avmnet] [load_firmware] phy_22F_3: FE firmware already loaded into GPHY 0
[    5.960000] avm_pa: try to activate hw accelaration for pid 1 (ipv4)
[    5.970000] drivers/net/avm_cpmac/switch/ifx/common/swi_ifx_common.c:649:ifx_ppa_alloc_virtual_tx_device: alloc virtual tx for pid 1 FAILED 
[    5.980000] avm_pa: can't activate tx channel, pid 1 (ipv4)
[    5.990000] avm_pa: try to activate hw accelaration for pid 2 (ipv6)
[    5.990000] drivers/net/avm_cpmac/switch/ifx/common/swi_ifx_common.c:649:ifx_ppa_alloc_virtual_tx_device: alloc virtual tx for pid 2 FAILED 
[    6.010000] avm_pa: can't activate tx channel, pid 2 (ipv6)
[    6.010000] [avmnet_set_macaddr] Setup Mac Addr for Device(eth0): 5c:49:79:db:93:0c 
[    6.020000] avmnet: avm_pa: register pid eth0
[    6.030000] [avmnet_set_macaddr] Setup Mac Addr for Device(eth1): 5c:49:79:db:93:0d 
[    6.030000] avmnet: avm_pa: register pid eth1
[    6.040000] [avmnet_set_macaddr] Setup Mac Addr for Device(eth2): 5c:49:79:db:93:10 
[    6.050000] avmnet: avm_pa: register pid eth2
[    6.050000] [avmnet_set_macaddr] Setup Mac Addr for Device(eth3): 5c:49:79:db:93:11 
[    6.060000] avmnet: avm_pa: register pid eth3
[    6.060000] kernel_init: basic setup done
[    6.070000] SQUASHFS error: Can't find a SQUASHFS superblock on mtdblock3
[    6.070000] yaffs: dev is 32505859 name is "mtdblock3" ro
[    6.080000] yaffs: passed flags ""
[    6.090000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x800 page: 0x8240)
[    6.110000] VFS: Mounted root (yaffs filesystem) readonly on device 31:3.
[    6.120000] Freeing unused kernel memory: 212k freed
[    6.180000] trying /sbin/init
[    6.280000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x9910)
[    6.290000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7018)
[    6.300000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x701f)
[    6.420000] [squashfs] use zip compression 
[    6.580000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8051)
[    6.600000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x806b)
[    6.650000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8021)
[VR9-flash] -- Test --
starting pid 215, tty '/dev/ttyS0': '/etc/init.d/rc.S'
mount: mounting proc on /proc failed: Device or resource busy
tar: removing leading '/' from member names
source files in group 0 ...
/etc/init.d/S00-signal    /etc/init.d/S05-watchdog  /etc/init.d/S09-rtc
/etc/init.d/S01-head      /etc/init.d/S08-tffs
/etc/init.d/S02-led       /etc/init.d/S09-config
[config-space] detected mtdmtd4: size '2097152'
[    7.000000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x86f5)
modprobe: module nand not found in modules.dep
[config-space][yaffs] driver is loaded
[config-space] using mtd4 for /var/flash
[    7.040000] yaffs: dev is 32505860 name is "mtdblock4" rw
[    7.050000] yaffs: passed flags ""
[config-space] /var/flash assigned @ /dev/mtdblock4
[    7.580000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x77d3)
[    7.590000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x77dd)
[    7.710000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7b73)
[    7.820000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x784c)
[    7.910000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7fad)
[    7.950000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7bdf)
[    8.220000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x739f)
[    8.340000] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x9158)
[    8.470000] [module-alloc-by-name] give 0x1c000 bytes at 0x81101000 to module 'led_modul_Fritz_Box_HW198' (0xa10000 bytes left)
[    8.480000] led_modul_Fritz_Box_HW198: module license '
[    8.480000] (C) Copyright 2012 by AVM
[    8.480000] ' taints kernel.
[    8.490000] Disabling lock debugging due to kernel taint
[    8.520000] [LED] use GPIO 5 for 'gpio_avm_led_power'
[    8.520000] [LED] use GPIO 4 for 'gpio_avm_led_lan_all'
[    8.530000] [LED] use GPIO 11 for 'gpio_avm_led_wlan'
[    8.530000] [LED] use GPIO 27 for 'gpio_avm_led_pppoe'
[    8.540000] [LED] use GPIO 25 for 'gpio_avm_led_info'
[    8.540000] [LED] use GPIO 26 for 'gpio_avm_led_info_red'
[    8.550000] [BUTTON] use GPIO 1 for 'gpio_avm_button_wlan'
[    8.550000] [BUTTON] use GPIO 0 for 'gpio_avm_button_wps'
[    8.560000] [register_bug_debug_table] name='led-modul' 0x8110ed64 - 0x8110ed78
[    8.570000] AVM_WATCHDOG: System Init UEberwachung 120 Sekunden
P-Defaults: do nothing
[    8.990000] [module-alloc-by-name] give 0x2000 bytes at 0x8111d000 to module 'rtc_avm' (0xa0e000 bytes left)
[    9.020000] rtc-avm rtc-avm.0: rtc core: registered avm as rtc0
[    9.030000] [avm-rtc]: avm_rtc_probe: register: ret=0x87373600
[    9.030000] [avm-rtc]: avm_rtc_probe: success
exceute files in group 0 ...
/etc/init.d/E05-basemodules
group 0 done ...
source files in group 1 ...
/etc/init.d/S10-html        /etc/init.d/S12-default
/etc/init.d/S10-vm          /etc/init.d/S15-filesys
/etc/init.d/S11-config_def  /etc/init.d/S17-capi
/etc/init.d/S11-piglet      /etc/init.d/S17-tam
[    9.200000] 
[    9.200000] [avm_debug] redirecting kernel-messages (/dev/debug)
modprobe: module nand not found in modules.dep
[yaffs] driver is loaded
[yaffs] nand-mtd: mtd5: 01600000 00020000 "nand-filesystem"

[    9.430000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x768a)
[    9.480000][1] yaffs: dev is 32505861 name is "mtdblock5" rw
[    9.480000][1] yaffs: passed flags ""
[yaffs] Internal Memory assigned @ /var/media/ftp
[Internal Memory] is NOT empty
FRITZ
[Internal Memory] initially filling skipped
[    9.550000][1] 
[avm_debug] redirecting kernel-messages (/dev/debug)
cat: can't open '/dev/debug': Device or resource busy
[    9.630000][0] [module-alloc-by-name] give 0x66000 bytes at 0x8111f000 to module 'pcmlink' (0x9a8000 bytes left)
[    9.630000][0] [module-alloc-by-name] 0x66000 bytes used, 0x659e4 bytes expected
[    9.880000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8509)
[    9.990000][0] [module-alloc-by-name] give 0xcd000 bytes at 0x81185000 to module 'isdn_fbox_fon5' (0x8db000 bytes left)
[    9.990000][0] [module-alloc-by-name] 0xcd000 bytes used, 0xcfff8 bytes expected
[   10.450000][0] system-load 5 loadavg 0.31 0.7 0.2 - 37 tasks:77 % curr:modprobe(5 %) max:init(58 %, pid:1) pgstat: sum=27697 free=21486 slab=3948 alloc=1558/s fault=2957/s (sleep 1)
[   10.530000][0] [capi_oslib]avm_stack_attach: cpu0 -> cpu1
[   10.530000][1] [pcmlink]chrony-support
[   10.540000][1] ifx_gptu_timer_set(0, 250000), divider = 1000000
[   10.560000][1] [isdn]PCMLINK: svnVersion: 2496 (isdn: 3215) Codecslots=0 Slics=0 Pots=0 TE=0 NT=0 DECT=0 no HwCross DSP-EC: 0
[   10.560000][1] [isdn]no hardware found: voip-only
[   10.660000][1] [module-alloc-by-name] give 0x6a000 bytes at 0x81252000 to module 'capi_codec' (0x871000 bytes left)
[   10.660000][1] [module-alloc-by-name] 0x6a000 bytes used, 0x6bec8 bytes expected
TAM: create directory /data/tam
exceute files in group 1 ...
/etc/init.d/E15-device
mknod led c 243
mknod tffs c 244
mknod avm_power c 253
mknod debug c 249
mknod avm_event c 251
mknod capi_oslib c 68
/
group 1 done ...
source files in group 2 ...
/etc/init.d/S21-udev
exceute files in group 2 ...
group 2 done ...
source files in group 3 ...
[   11.020000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x9016)
/etc/init.d/S30-ledcfg
exceute files in group 3 ...
group 3 done ...
source files in group 4 ...
/etc/init.d/S42-ptest     /etc/init.d/S46-usb
/etc/init.d/S44-hostname  /etc/init.d/S48-configd
[   11.070000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x906a)
Jan  1 01:00:11 udevd[499]: specified group 'tty' unknown

Jan  1 01:00:11 udevd[499]: specified group 'dialout' unknown

Jan  1 01:00:11 udevd[499]: specified group 'kmem' unknown

Jan  1 01:00:11 udevd[499]: specified group 'video' unknown

Jan  1 01:00:11 udevd[499]: specified group 'audio' unknown

Jan  1 01:00:11 udevd[499]: specified group 'lp' unknown

Jan  1 01:00:11 udevd[499]: specified group 'disk' unknown

Jan  1 01:00:11 udevd[499]: specified group 'floppy' unknown

Jan  1 01:00:11 udevd[499]: specified group 'cdrom' unknown

Jan  1 01:00:11 udevd[499]: specified group 'tape' unknown

udev: starting version 151
51
[   11.310000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8642)
[   11.350000][0] [module-alloc-by-name] give 0x2b000 bytes at 0x812bc000 to module 'usbcore' (0x846000 bytes left)
[   11.350000][0] [module-alloc-by-name] 0x2b000 bytes used, 0x2b0c8 bytes expected
[   11.500000][1] usbcore: registered new interface driver usbfs
[   11.510000][0] usbcore: registered new interface driver hub
[   11.510000][0] usbcore: registered new device driver usb
[   11.630000][0] [module-alloc-by-name] give 0x1c000 bytes at 0x812e7000 to module 'ifxusb_host' (0x82a000 bytes left)
[   11.630000][0] [module-alloc-by-name] 0x1c000 bytes used, 0x1e560 bytes expected
[   11.660000][0] IFXUSB: ifxusb_hcd: version 3.0alpha B100312
[   11.660000][0] early VBUS switch
[   13.230000][0] IFXUSB: USB core #0 soft-reset
[   13.430000][0] IFXUSB: USB core #0 soft-reset
[   13.430000][0] IFXUSB: ifxhcd_init: req yield ret =9
[   13.430000][0] ifxusb_hcd ifxusb_hcd: IFX USB Controller
[   13.430000][0] ifxusb_hcd ifxusb_hcd: new USB bus registered, assigned bus number 1
[   13.430000][0] ifxusb_hcd ifxusb_hcd: irq 26, io mem 0xbe101000
[   13.430000][0] IFXUSB: Init: Power Port (0)
[   13.440000][0] usb usb1: configuration #1 chosen from 1 choice
[   13.440000][1] hub 1-0:1.0: USB hub found
[   13.440000][1] hub 1-0:1.0: 1 port detected
[   13.440000][1] avm_net_trace: New net trace device 'usb1' registered with minor 161.
[   13.710000][1] IFXUSB: USB core #1 soft-reset
[   13.860000][1] IFXUSB: USB core #1 soft-reset
[   13.860000][1] IFXUSB: ifxhcd_init:reload_val_fast 2840
[   13.860000][1] IFXUSB: ifxhcd_init:reload_val_normal 15625
[   13.860000][1] IFXUSB: ifxhcd_init:reload_val_slow 2500000
[   13.860000][1] ifx_gptu_timer_set(2, 100000), divider = 2500000
[   13.860000][1] IFXUSB: ifxhcd_init: req yield ret =13
[   13.860000][1] ifxusb_hcd ifxusb_hcd: IFX USB Controller
[   13.860000][1] ifxusb_hcd ifxusb_hcd: new USB bus registered, assigned bus number 2
[   13.890000][0] ifxusb_hcd ifxusb_hcd: irq 27, io mem 0xbe106000
[   13.890000][0] IFXUSB: Init: Power Port (0)
[   13.890000][0] usb usb2: configuration #1 chosen from 1 choice
[   13.890000][0] hub 2-0:1.0: USB hub found
[   13.890000][0] hub 2-0:1.0: 1 port detected
[   13.890000][0] avm_net_trace: New net trace device 'usb2' registered with minor 162.
ifxusb_host started
[   14.050000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x72e6)
[   14.310000][1] system-load 7 loadavg 0.31 0.7 0.2 - 54 tasks:4 % curr:udevadm(1 %) max:loop0(1 %, pid:208) pgstat: sum=28028 free=20334 slab=4668 alloc=583/s fault=1383/s (sleep 1)
[   14.580000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x932d)
[   14.580000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x932e)
exceute files in group 4 ...
[   15.160000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7ce8)
/etc/init.d/E40-avmipc  /etc/init.d/E46-net
/etc/init.d/E40-dsl     /etc/init.d/E47-voip
[   16.330000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8c52)
[   16.360000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8c8a)
/
[dsl sus] dsl line test calib factory file available
[dsl get xtse] ANNEX=A
[dsl get xtse] setting Annex A and M
[dsl get xtse] 04 00 04 00 04 01 04 00
[dsl sus] starting ar10 dsp...
[dsl sus] ANNEX=A DIAGNOSE=no
[   17.020000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x857d)
[   17.040000][1] [module-alloc-by-name] give 0xa000 bytes at 0x81303000 to module 'ifxmips_mei' (0x820000 bytes left)
[   17.040000][1] [module-alloc-by-name] 0xa000 bytes used, 0xa578 bytes expected
[dsl mei] Lantiq MEI driver version: 5.06.02
[dsl mei] Lantiq MEI driver global debug_level: 0
[dsl sus] loaded ar10 mei driver: ifxmips_mei.ko with params: 
[   18.190000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8240)
[   18.230000][1] [module-alloc-by-name] give 0x52000 bytes at 0x8130d000 to module 'drv_dsl_cpe_api' (0x7ce000 bytes left)
[   18.230000][1] [module-alloc-by-name] 0x52000 bytes used, 0x537d0 bytes expected
[dsl drv] Lantiq CPE API Driver version: DSL CPE API V4.13.6
[dsl drv] Predefined debug level: 4
[dsl drv] dynamically registered major number 239 for drv_dsl_cpe_api
[dsl sus] loaded ar10 dsl driver: drv_dsl_cpe_api.ko with params: 
[dsl sus] created ar10 dsl device node /dev/dsl_ar10 (major: 239 , minor: 0)
[dsl sus] created ar10 mei device node /dev/ifx_mei (major: 242 , minor: 0)
[dsl sus] invoke /sbin/notify_avmnet --broadband_type DSL hw_start_tm_atm
[   18.440000][1] [module-alloc-by-name] give 0x30000 bytes at 0x8135f000 to module 'ifxmips_ppa_datapath_ar10_a5' (0x79e000 bytes left)
[   18.440000][1] [module-alloc-by-name] 0x30000 bytes used, 0x318b0 bytes expected
Loading A5 (MII0/1 + ATM) driver ...... 
[   18.490000][1] clk=250, cfg_bits=0x10000 
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[0] = 0 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[1] = 1 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[2] = 2 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[3] = 3 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[4] = 4 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[5] = 5 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[6] = 6 to hw
[   18.510000][1] [init_communication_data_structures] write g_eth_prio_queue_map[7] = 7 to hw
[   18.510000][1] [alloc_dma] g_eth_wan_mode = 0, g_wanqos_en=0
CHIPID: 2, chipid address: 0xbf107344
[   18.530000][1] [avmnet_swi_ar10_a5_register_xmit] setup new xmit function 
[   18.530000][1] [avmnet_swi_ar10_a5_register_xmit] xmit eth0 = ifx_ppa_eth_hard_start_xmit_a5+0x0/0x640 [ifxmips_ppa_datapath_ar10_a5] 
[   18.530000][1] [avmnet_swi_ar10_a5_register_xmit] xmit eth1 = ifx_ppa_eth_hard_start_xmit_a5+0x0/0x640 [ifxmips_ppa_datapath_ar10_a5] 
[   18.530000][1] [avmnet_swi_ar10_a5_register_xmit] xmit eth2 = ifx_ppa_eth_hard_start_xmit_a5+0x0/0x640 [ifxmips_ppa_datapath_ar10_a5] 
[   18.530000][1] [avmnet_swi_ar10_a5_register_xmit] xmit eth3 = ifx_ppa_eth_hard_start_xmit_a5+0x0/0x640 [ifxmips_ppa_datapath_ar10_a5] 
[   18.530000][1] [avmnet] [avmnet_swi_7port_disable_learning] Configuring CPU-port to receive all unknown unicast frames 0x61
[   18.530000][1] [avmnet] [avmnet_swi_7port_disable_learning] Configuring CPU-port to receive all unknown multicast frames 0x61
Succeeded!
PPE datapath driver info:
   Version ID: 64.3.7.1.0.1.4
   Family    : VR9
   DR Type   : Normal Data Path | Indirect-Fast Path
   Interface : MII0 | MII1 | ATM
   Mode      : Routing
   Release   : 0.1.4
PPE firmware info:
   Version ID: 8.4.2.11.1
   Family    : AR10
   FW Package: A5
   Release   : 2.11.1
PPE firmware feature:
   ATM/PTM TC-Layer                Support
   Packet Acceleration             Support
   IPv4                            Support
   IPv6                            Support
   6RD                             Support
   DS-Lite                         Support
[dsl sus] oamd loaded
[dsl sus] started dsl_control (configuration: -i04_00_04_00_04_01_04_00 -f/var/dsl/dspfw/ar10-A-dsl.bin -n/etc/dsl/notify/dsl_notify.sh )
nohup: appending output to nohup.out
nohup: appending output to nohup.out
[   18.600000][1] userspace registering PID
[   18.640000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x9349)
0
[dsl sus] started dsl_monitor
[dsl sus] ....ar10 dsp started
[   18.890000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8276)
[   18.990000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x82cd)
[   19.090000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8366)
[   19.320000][0] [module-alloc-by-name] give 0x1d2000 bytes at 0x8138f000 to module 'kdsldmod' (0x5cc000 bytes left)
[   19.320000][0] [module-alloc-by-name] 0x1d2000 bytes used, 0x1d3dc8 bytes expected
[   20.640000][0] system-load 100% loadavg 0.93 0.21 0.7 - 78 tasks:39 % curr:modprobe(15 %) max:modprobe(15 %, pid:953) pgstat: sum=27414 free=12863 slab=8246 alloc=2245/s fault=4062/s (sleep 3)
[   23.070000][0] kdsldmod: init start (Mar 21 2017 18:53:08) sizeof(struct sk_buff)=440
[   23.080000][0] userman: device registerd (userman_url) with major=233
kdsld: ttychannel: ldisc 8 registered
[   23.080000][0] PCP_NL: PCP netlink interface (multicast group 1)
[   23.080000][0] kdsldmod: init done (Mar 21 2017 18:53:09)
Jan  1 01:00:23 l2tpv3d[1076]: starting ...
1970-01-01 01:00:23 l2tpv3d[1076]: ready (0sec)
Jan  1 01:00:23 l2tpv3d[1078]: started.
Jan  1 01:00:23 l2tpv3d[1078]: verbose: DISABLED
[   24.030000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7a53)
[   24.070000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7a77)
Jan  1 01:00:24 ctlmgr[1083]: pcpc_create_ctx: no pcpserver found
[   24.310000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x79da)
[   24.320000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x79e8)
Jan  1 01:00:24 upnpd[1089]: starting ...
[   24.510000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x79b1)
Jan  1 01:00:24 ctlmgr[1085]: /var/flash/voip.cfg: is empty
Jan  1 01:00:24 ctlmgr[1085]: load_config(voip): file empty - factory default loaded
1970-01-01 01:00:24 upnpd[1089]: ready (0sec)
Jan  1 01:00:24 ctlmgr[1085]: /var/flash/ewnwstatus.cfg: is empty
Jan  1 01:00:24 ctlmgr[1085]: load_config(ewnwstatus): file empty - factory default loaded
Jan  1 01:00:25 multid[1097]: /var/flash/vpn.cfg: is empty
Jan  1 01:00:25 multid[1097]: load_config(vpn): file empty - factory default loaded
Jan  1 01:00:25 multid[1097]: startup ($Revision: 31261 $$CompileDate: Mar 21 2017 18:52:15 $)
Jan  1 01:00:25 multid[1097]: starting ...
Jan  1 01:00:25 multid[1099]: HWRevision=198
[avm_power] eth: port 0 force normal  CON t0
[avm_power] eth: port 1 force throttle  CON t0
[avm_power] eth: port 2 force throttle  CON t0
[avm_power] eth: port 3 force throttle  CON t0
Jan  1 01:00:25 multid[1099]: opt_without_tr069discover=0, tr069disc=0, AR7CFG->vinax_hsi_lan_ports=(null), multid.tcom_targetarch=0, is_eth_switch_installed()=0, multid.cpmac_no_ata_possible=0, pppoeiface=ptm0
Jan  1 01:00:25 multid[1099]: bridge_configured: nqos_bridge_active=0, bridge_port_set=0x0, igmp_flt_portset=0x0
Jan  1 01:00:26 multid[1099]: flood ratelimiting on bridge lan is NOT supported

[   26.890000][0] ADDRCONF(NETDEV_UP): lan: link is not ready
[   26.890000][0] ADDRCONF(NETDEV_UP): lan: link is not ready
[   26.890000][0] [avmnet] [avmnet_mcfw_enable] Device eth0 was enabled already
[   26.890000][0] ADDRCONF(NETDEV_UP): eth0: link is not ready
Jan  1 01:00:26 multid[1099]: list[0]=lan
[   26.900000][0] device eth0 entered promiscuous mode
[   26.900000][0] [avmnet] [avmnet_mcfw_enable] Device eth1 was enabled already
[   26.900000][0] ADDRCONF(NETDEV_UP): eth1: link is not ready
Jan  1 01:00:26 multid[1099]: list[0]=lan
[   26.900000][0] device eth1 entered promiscuous mode
[   26.900000][0] [avmnet] [avmnet_mcfw_enable] Device eth2 was enabled already
[   26.900000][0] ADDRCONF(NETDEV_UP): eth2: link is not ready
Jan  1 01:00:26 multid[1099]: list[0]=lan
[   26.910000][0] device eth2 entered promiscuous mode
[   26.910000][0] [avmnet] [avmnet_mcfw_enable] Device eth3 was enabled already
[   26.910000][0] ADDRCONF(NETDEV_UP): eth3: link is not ready
Jan  1 01:00:26 multid[1099]: list[0]=lan
[   26.910000][0] device eth3 entered promiscuous mode
Jan  1 01:00:26 ctlmgr[1085]: WLANLIB: wlan_plugin_init:832: svn revision 2556
Jan  1 01:00:26 ctlmgr[1085]: WLANLIB: weak_wlan_check:73: Missing weak 'process_wlanmail'.
Jan  1 01:00:26 ctlmgr[1085]: WLANLIB: weak_wlan_check:76: Missing weak 'wlan_enabled_changed'.
Jan  1 01:00:27 multid[1099]: flood ratelimiting on bridge guest is NOT supported

[   27.920000][0] ADDRCONF(NETDEV_UP): guest: link is not ready
[   27.930000][0] ADDRCONF(NETDEV_UP): guest: link is not ready
Jan  1 01:00:27 multid[1099]: mrouter: using IGMPv3 for upstream interface dsl
Jan  1 01:00:27 multid[1099]: mrouter: using IGMPv3 for other interfaces
Jan  1 01:00:27 multid[1099]: resolv.conf with 127.0.0.1 written
Jan  1 01:00:27 ctlmgr[1085]: WLANLIB: wcsi_socket_connect:501: Establishing RPC connection failed with TIMEOUT
Jan  1 01:00:27 multid[1099]: DHCPD on lan
Jan  1 01:00:27 multid[1099]: DHCPD on lan:0 skipped, is virtual interface
Jan  1 01:00:28 ctlmgr[1085]: /var/flash/stat.cfg: is empty
Jan  1 01:00:28 ctlmgr[1085]: /etc/default/avme/stat.cfg: is empty
Jan  1 01:00:28 ctlmgr[1085]: load_config(stat): file empty - factory default loaded
Jan  1 01:00:28 multid[1099]: DHCPD on guest
Jan  1 01:00:28 multid[1099]: open(/dev/userman) - No such file or directory (2)
Jan  1 01:00:28 multid[1099]: open(/dev/userman) - No such file or directory (2)
Jan  1 01:00:28 multid[1099]: Warning: dnsd_start: no dns server added
Jan  1 01:00:28 multid[1099]: interface lo up.
Jan  1 01:00:28 multid[1099]: interface lo carrier up
Jan  1 01:00:28 multid[1099]: list[0]=lan
Jan  1 01:00:28 multid[1099]: list[1]=guest
Jan  1 01:00:28 multid[1099]: br_get_interfaces(guest)=0
Jan  1 01:00:28 multid[1099]: interface eth0 up.
Jan  1 01:00:28 multid[1099]: list[0]=lan
Jan  1 01:00:28 multid[1099]: list[1]=guest
Jan  1 01:00:28 multid[1099]: br_get_interfaces(guest)=0
Jan  1 01:00:28 multid[1099]: interface eth1 up.
Jan  1 01:00:28 multid[1099]: list[0]=lan
Jan  1 01:00:28 multid[1099]: list[1]=guest
Jan  1 01:00:28 multid[1099]: br_get_interfaces(guest)=0
Jan  1 01:00:28 multid[1099]: interface eth2 up.
Jan  1 01:00:28 multid[1099]: list[0]=lan
Jan  1 01:00:28 multid[1099]: list[1]=guest
Jan  1 01:00:28 multid[1099]: br_get_interfaces(guest)=0
Jan  1 01:00:28 multid[1099]: interface eth3 up.
Jan  1 01:00:28 multid[1099]: DHCPD on lan
Jan  1 01:00:28 multid[1099]: interface lan up.
Jan  1 01:00:28 multid[1099]: DHCPD on lan
Jan  1 01:00:28 multid[1099]: mrouter: lan: vif 0 if_index 8
Jan  1 01:00:28 multid[1099]: interface guest up.
Jan  1 01:00:28 multid[1099]: DHCPD on guest
Jan  1 01:00:28 multid[1099]: mrouter: lan: vif 0 if_index 8
Jan  1 01:00:28 multid[1099]: mrouter: guest: vif 1 if_index 9
Jan  1 01:00:28 multid[1099]: verbose: DISABLED
1970-01-01 01:00:28 multid[1097]: ready (3sec)
Jan  1 01:00:28 ddnsd[1146]: startup ($Revision: 31930 $$CompileDate: Mar 21 2017 18:52:19 $)
Jan  1 01:00:28 ddnsd[1146]: starting ...
Jan  1 01:00:28 ddnsd[1148]: DDNS: no valid accounts
Jan  1 01:00:28 ddnsd[1148]: [1148] Start failed

1970-01-01 01:00:28 ddnsd[1146]: [1146]: Daemon start failed (0sec)
FATAL: ddnsd not running after started
Jan  1 01:00:28 pcpd[1150]: startup (Mar 21 2017 18:53:03)
Jan  1 01:00:28 pcpd[1150]: starting ...
Jan  1 01:00:28 pcpd[1152]: Local v4 address: 192.168.178.1
Jan  1 01:00:28 pcpd[1152]: verbose: DISABLED
1970-01-01 01:00:28 pcpd[1150]: ready (0sec)
Jan  1 01:00:28 upnpdevd[1154]: startup ($Revision: 30509 $$CompileDate: Mar 21 2017 18:52:20 $)
Jan  1 01:00:28 upnpdevd[1154]: starting ...
1970-01-01 01:00:28 upnpdevd[1154]: ready (0sec)
Jan  1 01:00:28 upnpdevd[1156]: verbose: DISABLED
rc.wlan: Start WLAN...
[   28.960000][1] system-load 5 loadavg 1.2 0.24 0.8 - 89 tasks:20 % curr:ctlmgr(10 %) max:ctlmgr(10 %, pid:1085) pgstat: sum=29420 free=9578 slab=8952 alloc=1089/s fault=2389/s (sleep 7)
WLAND:[01165]:01:00.29/[29.0]:BUILD: Mar 21 2017, 19:04:58
Jan  1 01:00:29 ctlmgr[1085]: /var/flash/vpn.cfg: is empty
Jan  1 01:00:29 ctlmgr[1085]: load_config(vpn): file empty - factory default loaded
[   29.130000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8dd8)
Jan  1 01:00:29 dsld[1168]: startup ($Revision: 32621 $$CompileDate: Mar 21 2017 18:53:50 $)
Jan  1 01:00:29 dsld[1168]: set_preconfig1
Jan  1 01:00:29 dsld[1168]: sync_group in ar7.cfg:
Jan  1 01:00:29 dsld[1168]: sync_group:sync_dsl(enabled=1), nr=0
Jan  1 01:00:29 dsld[1168]:   vcc:8/35
Jan  1 01:00:29 dsld[1168]:     dsliface:internet
Jan  1 01:00:29 dsld[1168]:   vcc:8/36
Jan  1 01:00:29 dsld[1168]:     dsliface:voip
Jan  1 01:00:29 dsld[1168]: sync_group: dsl
Jan  1 01:00:29 dsld[1168]: sync_dsl is igd_device
Jan  1 01:00:29 ctlmgr[1085]: /var/flash/vpn.cfg: is empty
Jan  1 01:00:29 ctlmgr[1085]: load_config(vpn): file empty - factory default loaded
Jan  1 01:00:29 dsld[1168]: set_preconfig2
Jan  1 01:00:29 dsld[1168]: add_vcc_connection: 8/35, sync_group=dsl 
Jan  1 01:00:29 dsld[1168]: add_vcc_connection: 8/36, sync_group=dsl 
[   29.540000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8749)
Jan  1 01:00:29 dsld[1168]: starting ...
Jan  1 01:00:29 dsld[1183]: DSL Mac 5c:49:79:db:93:0f
Jan  1 01:00:29 dsld[1183]: VOIP Mac 5c:49:79:db:93:10
Jan  1 01:00:29 dsld[1183]: VCC2 Mac 5c:49:79:db:93:11
Jan  1 01:00:29 dsld[1183]: VCC3 Mac 5c:49:79:db:93:0d
[   29.580000][0] [module-alloc-by-name] give 0x27000 bytes at 0x81561000 to module 'aae' (0x5a5000 bytes left)
[   29.580000][0] [module-alloc-by-name] 0x27000 bytes used, 0x25590 bytes expected
kdsld: kdsld_vcc_preunregister: *
[   29.600000][1] kdsld: nr_ipv4 0 nr_ipv6 0 nr_vpn 0
Jan  1 01:00:29 dsld[1183]: sync_group(prepare_interfaces): dsl: inet_nr=0
Jan  1 01:00:29 dsld[1183]: nach prepare_interfaces: dsld.dsliface_default_inet_nr=0, dsld.dsliface_voip_nr=1
Jan  1 01:00:29 dsld[1183]: queue 0: prio 0 weight 0 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 1: prio 10 weight 0 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 2: prio 20 weight 0 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 3: prio 30 weight 0 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 4: prio 100 weight 90 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 5: prio 100 weight 10 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: queue 6: prio 200 weight 0 shrate 0 shburst 0 wan
Jan  1 01:00:29 dsld[1183]: appl 0: sip-appl result 1
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark sip" result 1
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark rtp" result 1
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark sip_internet" result 1
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark rtp_internet" result 1
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark sipdns,ntpdns,tr069dns,tr069" result 2
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark igmp" result 3
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark webdav" result 4
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark dns" result 2
Jan  1 01:00:29 dsld[1183]: classifer: lan "udp.dport 43962,47806" result 2
Jan  1 01:00:29 dsld[1183]: classifer: lan "ip.proto IPv6-ICMP" result 2
Jan  1 01:00:29 dsld[1183]: classifer: lan "ip.proto icmp" result 2
Jan  1 01:00:29 dsld[1183]: classifer: lan "udp.dport 53" result 2
Jan  1 01:00:29 dsld[1183]: classifer: lan "udp.dport 5060" result 5
Jan  1 01:00:29 dsld[1183]: classifer: lan "tcp.dport 5060" result 5
Jan  1 01:00:29 dsld[1183]: classifer: local "localmark lcp" result 3
Jan  1 01:00:29 dsld[1183]: result 0: tos 65535 vprio 65535 queue 5 appl 65535 bridge 65535 forward 65535
Jan  1 01:00:29 dsld[1183]: result 1: tos 65535 vprio 65535 queue 2 appl 65535 bridge 65535 forward 65535
Jan  1 01:00:29 dsld[1183]: result 2: tos 65535 vprio 65535 queue 1 appl 65535 bridge 65535 forward 65535
Jan  1 01:00:29 dsld[1183]: result 3: tos 65535 vprio 65535 queue 0 appl 65535 bridge 65535 forward 65535
Jan  1 01:00:29 dsld[1183]: result 4: tos 65535 vprio 65535 queue 6 appl 65535 bridge 65535 forward 65535
Jan  1 01:00:29 dsld[1183]: result 5: tos 65535 vprio 65535 queue 2 appl 0 bridge 65535 forward 65535
[   29.620000][1] kdsld: flushing internet sessions
Jan  1 01:00:29 dsld[1183]: /var/flash/vpn.cfg: is empty
Jan  1 01:00:29 dsld[1183]: load_config(vpn): file empty - factory default loaded
Jan  1 01:00:29 dsld[1183]: interface lo added.
Jan  1 01:00:29 dsld[1183]: interface lo up.
Jan  1 01:00:29 dsld[1183]: interface lo carrier_up.
Jan  1 01:00:29 dsld[1183]: interface tunl0 added.
Jan  1 01:00:29 dsld[1183]: interface eth0 added.
Jan  1 01:00:29 dsld[1183]: interface eth0 up.
Jan  1 01:00:29 dsld[1183]: interface eth1 added.
Jan  1 01:00:29 dsld[1183]: interface eth1 up.
Jan  1 01:00:29 dsld[1183]: interface eth2 added.
Jan  1 01:00:29 dsld[1183]: interface eth2 up.
Jan  1 01:00:29 dsld[1183]: interface eth3 added.
Jan  1 01:00:29 dsld[1183]: interface eth3 up.
Jan  1 01:00:29 dsld[1183]: interface adsl added.
Jan  1 01:00:29 dsld[1183]: interface lan added.
Jan  1 01:00:29 dsld[1183]: interface lan up.
Jan  1 01:00:29 dsld[1183]: interface guest added.
Jan  1 01:00:29 dsld[1183]: interface guest up.
Jan  1 01:00:29 dsld[1183]: /var/flash/stat.cfg: is empty
Jan  1 01:00:29 dsld[1183]: /etc/default/avme/stat.cfg: is empty
Jan  1 01:00:29 dsld[1183]: load_config(stat): file empty - factory default loaded
Jan  1 01:00:29 dsld[1183]: start register_vccs_and_ifaces_on_kdsld for sync_dsl
Jan  1 01:00:29 dsld[1183]: kdsld_preregister_vcc: predsl1
kdsld: kdsld_vcc_preregister: predsl1
kdsld: kdsld_vcc_preregister: vcc->ifaces=(null)
Jan  1 01:00:29 dsld[1183]: kdsld_preregister_vcc: kdsld_vccidx=0
[   29.700000][1] kdsld: IPv6: voip: link local fe80::5e49:79ff:fedb:9310 remote ::
[   29.700000][1] kdsld: voip: set_rcv_ipaddr: 192.168.178.1
Jan  1 01:00:29 dsld[1183]: udslcb_created: nr=1 (sync_dsl)
Jan  1 01:00:29 dsld[1183]: udsliface->attached=1(0x451de4)
Jan  1 01:00:29 dsld[1183]: kdsld_preregister_vcc: predsl2
kdsld: kdsld_vcc_preregister: predsl2
kdsld: kdsld_vcc_preregister: vcc->ifaces=(null)
Jan  1 01:00:29 dsld[1183]: kdsld_preregister_vcc: kdsld_vccidx=1
[   29.700000][1] kdsld: internet: set_rcv_ipaddr: 192.168.178.1
Jan  1 01:00:29 dsld[1183]: udslcb_created: nr=0 (sync_dsl)
Jan  1 01:00:29 dsld[1183]: udsliface->attached=1(0x451d70)
[   29.710000][1] kdsld: route-dsl: set_snd_ipaddr: 192.168.180.1
[   29.710000][1] kdsld: route-dsl: set_rcv_ipaddr: 192.168.180.1
1970-01-01 01:00:29 dsld[1168]: ready (0sec)
Jan  1 01:00:29 dsld[1183]: verbose: DISABLED
[   29.780000][0] [wlan_config] Given config is:
[   29.780000][0] [wlan_config]   hw_interface=0 chip_type=6 (osprey) offload=1 (non)
[   29.780000][0] [wlan_config] hwrev=198 hwsubrev=1 maca=5c:49:79:db:93:0c
[   29.800000][0] [wlan_eeprom] Calibration data blocks found = 1
[   29.800000][0] [wlan_eeprom] EEPROM #1, type "AR93xx/AR95xx":
[   29.800000][0] [wlan_eeprom] Customer data="AVM3272_CAL1_V2"
[   29.800000][0] [wlan_eeprom] regDmn=0x8114 - patching to 0
[   29.800000][0] [wlan_eeprom] MinCCAPwr thresh set to 2GHz:-70,-70,-70 5GHz:-1,0,0
[   29.800000][0] [wlan_eeprom] Build with ART2 4.4
[   29.800000][0] avm_net_trace: New net trace device 'WLAN Management Traffic' registered with minor 128.
[   29.860000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8d4d)
Jan  1 01:00:29 cloudmsgd[1193]: starting ...
[   30.040000][0] [module-alloc-by-name] give 0x6000 bytes at 0x81588000 to module 'adf' (0x59f000 bytes left)
[   30.040000][0] [module-alloc-by-name] 0x6000 bytes used, 0x5080 bytes expected
****Address of trace_timer :8158af90 
1970-01-01 01:00:30 cloudmsgd[1193]: ready (1sec)
[   30.260000][0] [module-alloc-by-name] give 0x3000 bytes at 0x8158e000 to module 'asf' (0x59c000 bytes left)
[   30.260000][0] [module-alloc-by-name] 0x3000 bytes used, 0x326c bytes expected
[   30.390000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8830)
[   30.540000][1] [module-alloc-by-name] give 0xb8000 bytes at 0x81591000 to module 'ath_hal' (0x4e4000 bytes left)
[   30.540000][1] [module-alloc-by-name] 0xb8000 bytes used, 0xb56c8 bytes expected
[   30.680000][1] ath_hal: 0.9.17.1 (AR5416, AR9380, REGOPS_FUNC, WRITE_EEPROM, TX_DATA_SWAP, RX_DATA_SWAP, 11D)
[   30.690000][0] system-load 100% loadavg 1.42 0.33 0.11 - 94 tasks:20 % curr:pbd(0 %) max:ctlmgr(8 %, pid:1085) pgstat: sum=29727 free=7099 slab=9250 alloc=604/s fault=959/s (sleep 0)
[   30.800000][0] [module-alloc-by-name] give 0x8000 bytes at 0x81649000 to module 'ath_rate_atheros' (0x4dc000 bytes left)
[   30.800000][0] [module-alloc-by-name] 0x8000 bytes used, 0x8098 bytes expected
[   30.830000][0] ath_rate_atheros: Copyright (c) 2001-2005 Atheros Communications, Inc, All Rights Reserved
[   30.920000][1] [module-alloc-by-name] give 0x12000 bytes at 0x81651000 to module 'ath_dfs' (0x4ca000 bytes left)
[   30.920000][1] [module-alloc-by-name] 0x12000 bytes used, 0x138f0 bytes expected
[   30.950000][1] ath_dfs: Version 2.0.0
Copyright (c) 2005-2006 Atheros Communications, Inc. All Rights Reserved
[   31.060000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x91dd)
Jan  1 01:00:31 telefon[1219]: use clock_gettime(CLOCK_MONOTONIC)!
Jan  1 01:00:31 telefon[1219]: No S0NT!
Jan  1 01:00:31 telefon[1219]: NoOldMSNNames
[   31.100000][1] [module-alloc-by-name] give 0x64000 bytes at 0x81663000 to module 'ath_dev' (0x466000 bytes left)
[   31.100000][1] [module-alloc-by-name] 0x64000 bytes used, 0x638a4 bytes expected
[   31.350000][1] ath_dev: Copyright (c) 2001-2007 Atheros Communications, Inc, All Rights Reserved
[   31.410000][1] [module-alloc-by-name] give 0x16000 bytes at 0x816c7000 to module 'userman_mod' (0x450000 bytes left)
[   31.410000][1] [module-alloc-by-name] 0x16000 bytes used, 0x16df4 bytes expected
[   31.440000][1] userman: LAN Client Internet-Accounting and Blocking
[   31.440000][1] userman: device registerd with major=231
[   31.440000][1] userman: init ok
[   31.520000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7378)
[   31.800000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7eee)
[   31.800000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x7efd)
[   31.930000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x89bb)
[   32.040000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8a35)
Jan  1 01:00:32 voipd[1235]: starting ...
Jan  1 01:00:32 voipd[1241]: /var/flash/voip.cfg: is empty
Jan  1 01:00:32 voipd[1241]: load_config(voip): file empty - factory default loaded
[   32.140000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8ac2)
[   32.150000][0] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8ad6)
[   32.320000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8b61)
Jan  1 01:00:32 telefon[1225]: NoOldMSNNames
[   32.400000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8bca)
[   32.430000][1] [module-alloc-by-name] give 0x25000 bytes at 0x816dd000 to module 'krtp' (0x42b000 bytes left)
[   32.430000][1] [module-alloc-by-name] 0x25000 bytes used, 0x267a8 bytes expected
[   32.510000][1] [ifx_nand_command_hwecc] read block is critical (status: 0xe8, column: 0x0 page: 0x8be8)
Jan  1 01:00:32 voipd[1241]: internet: dns_context: internet (ref 1)
Jan  1 01:00:32 voipd[1241]: internet: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: internet: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: internet: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: internet: if dsl (10) nr 0 connection 0
Jan  1 01:00:32 voipd[1241]: internet: dnscctx internet stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: internet: ipv4 no sync
Jan  1 01:00:32 voipd[1241]: internet: stackmode_ipv4
Jan  1 01:00:32 voipd[1241]: internet: dns_context: internet (ref 1)
Jan  1 01:00:32 voipd[1241]: internet: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: internet: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: internet: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: voip: dns_context: voip (ref 1)
Jan  1 01:00:32 voipd[1241]: voip: dns_context: ipv4 only, sipdns, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: voip: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: voip: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: voip: if dsl (10) nr -1 connection 0
Jan  1 01:00:32 voipd[1241]: voip: dnscctx voip stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: voip: ipv4 no sync
Jan  1 01:00:32 voipd[1241]: voip: stackmode_ipv4
Jan  1 01:00:32 voipd[1241]: voip: dns_context: voip (ref 1)
Jan  1 01:00:32 voipd[1241]: voip: dns_context: ipv4 only, sipdns, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: voip: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: voip: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: mta: dns_context: mta (ref 1)
Jan  1 01:00:32 voipd[1241]: mta: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: mta: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: mta: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: mta: if mta0 (0) netmark 1
Jan  1 01:00:32 voipd[1241]: mta: dnscctx mta stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: mta: ipv4 no sync
Jan  1 01:00:32 voipd[1241]: mta: ipv6 no sync
Jan  1 01:00:32 voipd[1241]: mta: stackmode_dual
Jan  1 01:00:32 voipd[1241]: mta: dns_context: mta (ref 1)
Jan  1 01:00:32 voipd[1241]: mta: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: mta: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: mta: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: homenet (ref 1)
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: from 127.0.0.1
Jan  1 01:00:32 voipd[1241]: homenet: if lan (8)
Jan  1 01:00:32 voipd[1241]: homenet: dnscctx homenet stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: homenet: ipv4 connected
Jan  1 01:00:32 voipd[1241]: homenet: stackmode_ipv4
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: homenet (ref 1)
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: homenet: dns_context: from 127.0.0.1
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: homenet (ref 1)
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: from 127.0.0.1
Jan  1 01:00:32 voipd[1241]: vpn: if dsl (10) nr 0 connection 0
Jan  1 01:00:32 voipd[1241]: vpn: dnscctx homenet stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: vpn: ipv4 no sync
Jan  1 01:00:32 voipd[1241]: vpn: stackmode_ipv4
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: homenet (ref 1)
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: vpn: dns_context: from 127.0.0.1
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: internet (ref 1)
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: 127.0.0.1 0
Jan  1 01:00:32 voipd[1241]: tunnel: if tun0 (0)
Jan  1 01:00:32 voipd[1241]: tunnel: dnscctx internet stay online 1 natstate normal
Jan  1 01:00:32 voipd[1241]: tunnel: ipv4 no sync
Jan  1 01:00:32 voipd[1241]: tunnel: ipv6 no sync
Jan  1 01:00:32 voipd[1241]: tunnel: stackmode_dual
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: internet (ref 1)
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: ipv4 only, none, 0, 2/5 300, 1
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: 1 name server:
Jan  1 01:00:32 voipd[1241]: tunnel: dns_context: 127.0.0.1 0
1970-01-01 01:00:32 voipd[1235]: ready (0sec)
group 4 done ...
source files in group 5 ...
[   32.860000][0] [module-alloc-by-name] give 0x2f0000 bytes at 0x81702000 to module 'umac' (0x13b000 bytes left)
[   32.860000][0] [module-alloc-by-name] 0x2f0000 bytes used, 0x2f391c bytes expected
exceute files in group 5 ...
group 5 done ...
source files in group 6 ...
exceute files in group 6 ...
group 6 done ...
source files in group 7 ...
/etc/init.d/S73-capitcp    /etc/init.d/S76-media
/etc/init.d/S75-inetd      /etc/init.d/S79-boxnotify
Jan  1 01:00:33 usermand[1244]: /var/flash/userstat.cfg: is empty
Jan  1 01:00:33 usermand[1244]: /etc/default/avme/userstat.cfg: is empty
Jan  1 01:00:33 usermand[1244]: load_config(userstat): file empty - factory default loaded
Jan  1 01:00:33 usermand[1244]: starting ...
/etc/init.d/rc.S: /etc/init.d/S76-media: line 6: /etc/init.d/rc.media: not found
exceute files in group 7 ...
group 7 done ...
source files in group 8 ...
/etc/init.d/S85-apps            /etc/init.d/S89-overheat_guard
exceute files in group 8 ...
group 8 done ...
source files in group 9 ...
/etc/init.d/S99-tail
run_clock demon started

AVM_WATCHDOG: System Init UEberwachung abgeschlossen (95030 ms noch verfuegbar)
[   33.580000][1] SysRq : Changing Loglevel
Loglevel set to 4
Info: have to stop cat /dev/debug.
notifyd[1266]: received signal Hangup
pbd[1214]: received signal Hangup

Please press Enter to activate this console. Jan  1 01:00:34 dsld[1183]: !!!!!!!!!!!!!!!!!route_add: default: metric=2, iface=dsl
Jan  1 01:00:36 ddnsd[1324]: startup ($Revision: 31930 $$CompileDate: Mar 21 2017 18:52:19 $)
Jan  1 01:00:36 ddnsd[1324]: starting ...
Jan  1 01:00:36 ddnsd[1326]: DDNS: no valid accounts
Jan  1 01:00:36 ddnsd[1326]: [1326] Start failed

Jan  1 01:00:36 pcpd[1328]: already running
rc.wlan: Start WLAN...
rc.wlan start: WLAN daemon already running
Jan  1 01:00:36 cloudmsgd[1338]: starting ...
--8323328-66850419-1566602064=:6377
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-66850419-1566602064=:6377--

