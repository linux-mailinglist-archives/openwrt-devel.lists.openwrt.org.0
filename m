Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07036A4415
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 12:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xdQqNbBn74LcQhBkAmhD5q4JsUUjeDve/5TwsIAQup0=; b=ZB0/RbbNFCcLvlSySBzxAD7PX
	0SLh/TaFj35iKTBocpSYca179PLZnZTcUnZ2c2KkJM+YU8dD5jQAzyMuHEhvL7xQC58zxshp6KTof
	5EDDnL1SLgU9mA1qAsWDNSZm8JB27hFK9Ab0skLWnZJKImjfUqFNrIgPc3gKXR42r0r5idKJXX+e2
	BsMk9a2swUvKNl9WLvvsVUH5mnTOhNhVugzBRr+xQF9j31tbXppVvpHmiJXpiC8d+TZKfutGvlAHh
	ksM8N8+EIP3JiWf4zZhnm12MGYQwhBt3Qw/2EpyDNKjQtN+ktxsM62R9U30TPAtkUHCTyMfEI5YnI
	ghZZzJ+Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i40lH-0000VJ-Er; Sat, 31 Aug 2019 10:37:39 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i40ky-0000Ut-FP
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 10:37:22 +0000
Received: by mail-wr1-x433.google.com with SMTP id b16so9295047wrq.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 31 Aug 2019 03:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=sylmEXDU72qG2bkmI+8qnB7fhoYun3S5xvZYdrMSunk=;
 b=m/5s9u/bssaw8LvZ1VNbrZMZ1MxP60BmsLRVhCsjB3k+F+CFckmVATjtsBQZu7T6M2
 NnGMpMoFSYuFo+iVRSfOyWa69zm5CJFateadhDZheTh8wcDtVXBOv3lR8MOfrTbUmsdf
 jLeA10BoiT/PPSlP1EAdnmLNuu+pkGXW1IsLBY3r25Ci9LqswS+Gp0TonSWPWYzi0o1Z
 msj6RLbNPrGQ2QApgFb82Ft/zT8QRSDWSdA03lHEB3kfAQ8baeSKtiLBmNvuLZ8lVDlh
 vz0jPfPlkTJitH9T+3ScCYP2h9NINWm7jn3hVMZ5Qpwe1Thq206I0F7FZ9kPJtt7t9ip
 X3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=sylmEXDU72qG2bkmI+8qnB7fhoYun3S5xvZYdrMSunk=;
 b=PUy7b6wE3aZKF3Vkqv8PhKVObk7KFOk6yQQUcbtFWJBXBmSv+ymdIkKAYv7ZGlDitG
 6k+hHSEXSmVlTuze/Lj+luluQxHOLV4xgBMzk2tUovyBjJiKBC0YA7VSIqremFFtiMmC
 piDpbriE0A+IhD7S3cz7/yv8he44MuGo1c2l9qU4Sie9Y0f4KEMBDAilSzT1UaVR+SwU
 MeIHozuQUtWhVqi/jDY/6Ugh70uneL5AZOHcG6vy3ZHWfsgL7eY9PnZmu6hdjOdsg+xA
 CgQph5RwUJ3QagoyLrlLtF3qBKS2zw0WAPUFdUrNQd7ao35+lTy1OE9Pq/6g3wNrevXv
 Ow3w==
X-Gm-Message-State: APjAAAVu6e3aY+sdLIcoXyXHyhpDT6hmhedTaClCIIDWiWt71selFZcb
 qJqS77YvpDjgdVywzxs8LwY=
X-Google-Smtp-Source: APXvYqxBu83ZpaYos7Xa1AG1cDYWoVKfxYh4S4YA+Q8owyJWQGgsIMF27tIX5MAmOPC1RIJyjsTxVw==
X-Received: by 2002:adf:f507:: with SMTP id q7mr24129338wro.210.1567247838490; 
 Sat, 31 Aug 2019 03:37:18 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id b1sm1545418wmj.4.2019.08.31.03.37.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 03:37:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id c00cb32a;
 Sat, 31 Aug 2019 10:37:16 +0000 (UTC)
Date: Sat, 31 Aug 2019 12:37:16 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
In-Reply-To: <CAOX2RU6=KFmP+LwWF23xUa3LVN3vD8a-Q6sw1_S7PC+DeWSATw@mail.gmail.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908311230150.7205@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
 <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
 <878srdp6zt.fsf@miraculix.mork.no>
 <alpine.LNX.2.21.99999.352.1908290226520.4679@localhost.localdomain>
 <CAOX2RU6=KFmP+LwWF23xUa3LVN3vD8a-Q6sw1_S7PC+DeWSATw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_033720_553808_D96631D2 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dear all,

So I looked at the GPL code from AVM.
I still can't understand why communications with PMU are actually failing: addresses seem right.
Still, I noticed AVM did some changes in arch/mips/setup.c, regarding memory init: currently I don't understand the impatct of those changes.

just in case it may reveal something, I am reporting here the list of pins and module ids of various pieces as reported in the
AVM hw config 198.
Sorry for possible erors.

Enrico


gpio_avm_led_power: pin=5 id=25 param=avm_hw_param_gpio_out_active_low, config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OUTPUT_SET
gpio_avm_led_lan_all: pin=4 id=25 param=avm_hw_param_gpio_out_active_low, config= IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OUTPUT_SET
gpio_avm_led_wlan: pin=11 id=25 params=active_low config=as_previous
gpio_avm_led_pppoe: pin=27 id=25 param=active_low config=as_previous
gpio_avm_led_info: pin=25 id=25 param=active_low config=as_previous
gpio_avm_led_info_red: pin=26 param=active_low config=as_previous
/* external interrupts 0 */
gpio_avm_button_wps: pin=0 id=25 param=active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_IN | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR
/* external interrupts 1 */
gpio_avm_button_wlan: pin=1 id=25 param=active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_IN | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR  | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_SET
gpio_avm_spi_clk: pin=18 id=4 param=avm_hw_param_no_param config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_spi_do: pin=17, id=4 param=no config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_spi_di: pin=16, id=4 param=no config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_IN | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR
gpio_avm_spi_flash_cs: pin=15 id=22 param=avm_hw_param_gpio_out_active_high config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_ale: pin=13 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_cle: pin=24 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_rd_by: pin=48 id=12 param=avm_hw_param_gpio_in_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_IN | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_CLEAR
gpio_avm_nand_rd: pin=49 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_wr: pin=59 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_wp: pin=60 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_cs1: pin=23 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d0: pin=51 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d1: pin=50 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d2: pin=52 id=12 param=avm_hw_param_gpio_out_active_low IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d3: pin=57 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d4: pin=56 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d5: pin=55 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d6: pin=54 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_nand_d7: pin=53 id=12 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET

/* USB land: they here use USB module ID = 8 | early regs = 0x08000000 (IFX_GPIO_MODULE_EARLY_REGISTER) */
gpio_avm_usb_pwr_en0: pin=10 id=8 config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET

/* ethernet */
gpio_avm_mii_mdio: pin=42 id=37 param=avm_hw_param_no_param config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET   | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR
gpio_avm_mii_mdc: pin=43 id=37 param=avm_hw_param_no_param config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_SET   | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR

/* they say it's PCIE / WLAN / Ext. WASP */
gpio_avm_pcie_reset0: pin=36 id=11 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
gpio_avm_pcie_chip_reset0: pin=61 id=11 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET
pcie_disable_interface_1: pin=1 /* dummy */
gpio_avm_arc_jtag_overwrite: value=14 id=35 param=avm_hw_param_gpio_out_active_low config=IFX_GPIO_IOCTL_PIN_CONFIG_DIR_OUT | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL0_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_ALTSEL1_CLEAR | IFX_GPIO_IOCTL_PIN_CONFIG_OD_SET

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
