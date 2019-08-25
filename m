Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A449C693
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 01:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PYAXmuFhvhd1slfh7vkNxyiJkXoMwTS+RvSeiUdA1Po=; b=HBbICTJWpIFJsdmm/MFJgDhr6
	rQt64VZm+HQKn39MQ8qUpIVlcZkyTFS4t4HtebfPHRDyNQWRQchekuoUxnomaekyfsQ00WcM4MLjI
	M97RbJNr6dwI+CZ89GrY+KC6QMTwfvEF/d3lMq+Peys/A1BzoFBqUhjWwIGF0HV/qJmZo+F2obfyB
	mthUxrqv9Sw7qAkw2FKcRVsP4VK/xb5GAowJQVIPbv5RHg0XVtP0rU5p0hIiDK6FCd1/J+fTypyfX
	Ejy25/bULKcdgZA3qwBTKKi9pNvvGNR4F3xlw3iBmg+EWi0LA8971oQeQJ9YLdZTWBpb2OW8Q6UeX
	YzKu6hTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i22OK-0001f9-Q0; Sun, 25 Aug 2019 23:57:48 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i22OC-0001eB-Tw
 for openwrt-devel@lists.openwrt.org; Sun, 25 Aug 2019 23:57:42 +0000
Received: by mail-wr1-x42a.google.com with SMTP id s18so13596325wrn.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 25 Aug 2019 16:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=6dIxXafObN6t4cqJ4dz60mbzPgtUpcImTRu7Ion5xfg=;
 b=mh6yM0S9ov+5kfFlDMERLTVKTK/WKMe5PoEWxXq4bwbcmQ35DhDuewVg4emManQcbJ
 RsUwx/tWmL7ryD/qDvH16CXocw/wV8RU3GVHgtMCnzBCsxFoYi37rzZsqcOmKMfXuHDo
 d7QgaSibbOzd/vIna0OxxJMK09y3fUB/uRtF+o8iaOm5k+M9rxJagENndvPw/p0nfGhb
 DO7YthrEJAjxc8mP+82lylUtm3zJGZVLWaoU+nK0qclFKpXNGFUSMNFAMBiXqoyDVbnD
 W12J/Xe8v9RO7djUCWrRbEljbLOW7aVXa5hVjFHBzVlTrj2dmX4e5VTuhqZtvizAn7H9
 Bi+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=6dIxXafObN6t4cqJ4dz60mbzPgtUpcImTRu7Ion5xfg=;
 b=aKK69HuLr8LE4hlNCppVac4E6Gt06PUGc5C2hZz6JuQF/pQcKOXsxoHw/WV8d5qNwC
 j3kbxJYs8L0fWR2SYI107YlqIe3fZEjxx0EmpV7xDFs2Jb8tkSul4RrUvcLu7b32WI4v
 vhJUq1YmnpUgTi4G3mvHl6a759Z2OG6GDT0Q7DiIAWjc3pJgmDdRvoRQUrwoErhF/KfY
 zxDMvFMquStLWPFIzGeVDkn4UAJ0iC1RLrx18F94Nh1NeU2J4cbH/rRp5C9XKq227ta7
 I01jDBYzjuQK7sWOrd1XGVqDrlIdvkhFAjbQkfaPuNrIwWB87XfoZwNEb9QFuasxizPh
 a0eA==
X-Gm-Message-State: APjAAAVTBGwl4gYfGN3fLQx/8yDo+pJ0bMAUuVighkHw5QD53+lzyyW+
 0Fpuv12I0Or0+KFAwUlUTg4=
X-Google-Smtp-Source: APXvYqwshob3YYW8K3wVD0238aTCru4BNNj+yKTMWmroqVpFvIrvAgTdqmjwvVn2WYfrkKLvVWFUPw==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr18665678wrv.155.1566777456083; 
 Sun, 25 Aug 2019 16:57:36 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id l14sm13819848wrn.42.2019.08.25.16.57.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 16:57:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id b8e43a86;
 Sun, 25 Aug 2019 23:57:33 +0000 (UTC)
Date: Mon, 26 Aug 2019 01:57:33 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
In-Reply-To: <mailman.19633.1566665943.19300.openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908260149470.4153@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <mailman.19633.1566665943.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_165740_993491_361300B1 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, john@phrozen.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dear Martin,
thank you very very much for being so Kind!
And thank you to all of you for your work!

Your suggestions where precious - and I will look at the referenced device.
In the meantime, I was taking a look at the flash layout. Luckily, it seems EVA will allow me to boot from RAM, which will be very useful.
Still, I am trying to understand as much as possible about this device before making any change.

First of all - I backed up all partitions using nanddump, except for those marked as 2out of reach" in dmesg, which are not readale by nanddump.
I used something like
nanddup -f file /dev/mtd<partition>

Secondly, I was looking at EVA environment, which is as follows:

HWRevision            198
HWSubRevision         1
ProductID             Fritz_Box_HW198
SerialNumber          0000000000000000
annex                 A
autoload              yes
bootloaderVersion     1.1787
bootserport           tty0
country               039
cpufrequency          500000000
firstfreeaddress      0x81113040
firmware_info         126.06.83
firmware_version      avme
flashsize             nor_size=0MB sflash_size=256KB nand_size=128MB
language              it
linux_fs_start        1
maca                  5C:49:79:DB:93:0C
macb                  5C:49:79:DB:93:0D
macwlan               5C:49:79:DB:93:0E
macdsl                5C:49:79:DB:93:0F
memsize               0x08000000
modetty0              38400,n,8,1,hw
modetty1              38400,n,8,1,hw
mtd0                  0x400000,0x3400000
mtd1                  0x0,0x400000
mtd2                  0x0,0x20000
mtd3                  0x20000,0x30000
mtd4                  0x30000,0x40000
mtd5                  0x0,0x200000
my_ipaddress          192.168.178.1
prompt                Eva_AVM
provider              wind_3272_12082013
req_fullrate_freq     250000000
sysfrequency          250000000
tr069_passphrase      TFX1HhthwN6T
tr069_serial          00040E-5C4979DB930C
urlader-version       2787
usb_board_mac         5C:49:79:DB:93:10
usb_device_id         0x0000
usb_device_name       USB DSL Device
usb_manufacturer_name  AVM
usb_revision_id       0x0000
usb_rndis_mac         5C:49:79:DB:93:11
wlan_key              ??????????????????????

(wlankey omitted).
I am not able to understand the general syntax for mtd partitions - e.g.: it seems the bootloader uses completely different partition layout).
I don't think I'll need to alter those partitions, but I am better in understanding their definitions should something go wrong in the wrong moment. :)
Thanks again, and sorry for the late answer.

Enrico

P.s.: deleted quoted text to make it easier to read the mail for me...

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
