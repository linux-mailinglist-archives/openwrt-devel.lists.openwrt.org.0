Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED0A8000
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 12:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jr4qtrZiKn3TrZu2PA+28RV1yJLZJx6TiCnsYMY/ji8=; b=V5WYdxWPnurG0FfEyzr9Ps6UR
	FpPETSAFBaX+ZzjZqBIVw9TX5AVj1KoOANjzlUmgi7ZvpIWA7CrQxQBAQ8UvfacQY8BEMAMNAdwtn
	CF13Y1vTq5nhfzUO+O38+rhPWXV/eyZwdeiy9Q17X2nwMrq1AeJdAbNImWax2FgNCkrwb+nYq5zDO
	Apm/N499Ht6Ga+YX9F6fhjOniChuMdDoH2u6JBZ1vrPIEGIVQNN8QF1t/4Mm3BsnEvaPEaUDESnrs
	cB7KX8Tc4aGTv6gBPqWfGpuhVMPR2n2WhjllM6LLU6BqocxnmWduGDFsze/uu3qQFhpDn5Yoz6wUS
	MEuByqtaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SCf-0002gt-Oe; Wed, 04 Sep 2019 10:07:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SCV-0002gX-62
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 10:07:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id r195so2956389wme.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Sep 2019 03:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=Ivir+ZqiK4ytoPobNNBtzexez14tcoJa372lwfjYBpg=;
 b=GsXNY3o0LRd6fOROqv3p/SEDGESQwvPgSigTEZuPuVKb03zhzgpzhqU+Ti9SLv0TTU
 cnAmKapXaHl1n82Ca1xUReniBqsAG1T5y/bgFilPA2bHGZgDraz5vLxUFS4n+si7wXWV
 MswuDcUc1JHoA3QeMnk28z/feBTWepAw+rxttzXXIDD7zk3yftj5u6sdXJo0lM+3UgPq
 J9JHWKHgnd0otUCWnK/9qpax5w+F6aFXQruLYWDt045df8yUh5ll0aMoL41kRwKkANPM
 vSWPGHUMICITSWF3CWsc7J6G7qsoyws3FL/rf3t0w24wXw7AARgku2Z553fbQ24tMUeq
 SDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=Ivir+ZqiK4ytoPobNNBtzexez14tcoJa372lwfjYBpg=;
 b=b/u/z/5JAj5rfDka0CLn0bFJ+ZbBQzj+6WPjmNS+BRnEzhp8rHYjglAhblJG7k9buF
 s1c7b/OotPImPNMCfFVWOJKVMQzuH+/QMNW7pSAEcnvu1o9fVPoF2Ls79XpwB/uFZ97d
 srAI+IKHnP1x6IlpDChNYTXu+5KAy9sQQQ0e/FSmeT629LmYes2Vz2XXh6/6XlM6XiiF
 ApiPZQHQjuN0bqqbLieTvwY01/BMIMzM6L/bPGe78SfSH7M+QTcY5dwWpRocLROvyJWi
 m+wQvnmRNarBOz7RMx2/9/yGb50JzCMCABqkVmGdSJUXTz9NcIeJdDeB0hTRWLu0y9du
 phsA==
X-Gm-Message-State: APjAAAVOhiSF5+M07MSildEftG0Z3QJieaLOfpKZ1aVpJsaEnQB0LKFN
 mXjXuX6i1JgSVYzvS87MWsg=
X-Google-Smtp-Source: APXvYqwnITo8yZf3mh+Yp7oKFNEJU4vB8imvsP/UC/FjrlSMJeDoGb4Om9G+mpB/S6WlgFjU4BEnsA==
X-Received: by 2002:a1c:4102:: with SMTP id o2mr3550871wma.66.1567591660888;
 Wed, 04 Sep 2019 03:07:40 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id a11sm22092665wrx.59.2019.09.04.03.07.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 03:07:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id a24653ee;
 Wed, 4 Sep 2019 10:07:37 +0000 (UTC)
Date: Wed, 4 Sep 2019 12:07:37 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
Message-ID: <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_030744_963251_9E974CE7 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.2 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on AR10
 platform)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi there!

So I am trying to get ethernet working on this AR10 device.
It has 3 GPHYs:

 			gphy0: gphy@20 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x20 0x4>;

 				resets = <&reset0 31 30>, <&reset1 7 7>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy1: gphy@58 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x58 0x4>;

 				resets = <&reset0 29 28>, <&reset1 6 6>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy2: gphy@ac {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0xac 0x4>;
 				resets = <&reset0 27 26>, <&reset1 5 5>;
 				reset-names = "gphy", "gphy2";
 			};

And firmware load addresses for GPHYs are correct as per the vendor code:
#define IFX_RCU_GPHY0_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x0020))
#define IFX_RCU_GPHY1_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x0058))
#define IFX_RCU_GPHY2_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x00AC))

But driver was failing to initialize due to missing clock gates.
In sysctrl.c, we have:
clkdev_add_pmu("1f203020.gphy", NULL, 1, 0, PMU_GPHY); // OK for GPHY0
clkdev_add_pmu("1f203068.gphy", NULL, 1, 0, PMU_GPHY); //problem for GPHY1

And GPHY2?

Attaching complete AR10 DTS I obtained collecting informations from various sources.
I would ask you if you could kindly help me pointing out mistakes,.
I am sure I am accumulating a fair amount of useless stuff in this file.
Enrico

#include <dt-bindings/gpio/gpio.h>

/ {
 	#address-cells = <1>;
 	#size-cells = <1>;
 	compatible = "lantiq,xway", "lantiq,ar10";

 	aliases {
 		serial0 = &asc1;
 	};

 	chosen {
 		stdout-path = "serial0:115200n8";
 	};

 	cpus {
 		cpu@0 {
 			compatible = "mips,mips34Kc";
 		};
 		cpu@1 {
 			compatible = "mips,mips34Kc";
 		};
 	};

 	memory@0 {
 		device_type = "memory";
 	};

 	cputemp@0 {
 		compatible = "lantiq,cputemp";
 	};

 	biu@1f800000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "lantiq,biu", "simple-bus";
 		reg = <0x1f800000 0x800000>;
 		ranges = <0x0 0x1f800000 0x7fffff>;

 		icu0: icu0@80200 {
 			#interrupt-cells = <1>;
 			interrupt-controller;
 			compatible = "lantiq,icu";
 			reg = <0x80200 0x28
 				0x80228 0x28
 				0x80250 0x28
 				0x80278 0x28
 				0x802a0 0x28>;
 		};

 		icu1: icu1@80300 {
 			#interrupt-cells = <1>;
 			interrupt-controller;
 			compatible = "lantiq,icu1";
 			reg = <0x80300 0x28
 				0x80328 0x28
 				0x80350 0x28
 				0x80378 0x28
 				0x803a0 0x28>;
 		};

 		watchdog@803f0 {
 			compatible = "lantiq,xrx100-wdt";
 			reg = <0x803f0 0x10>;
 			regmap = <&rcu0>;
 		};
 	};

 	sram@1f000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "lantiq,sram", "simple-bus";
 		reg = <0x1f000000 0x800000>;
 		ranges = <0x0 0x1f000000 0x7fffff>;

 		eiu0: eiu@101000 {
 			#interrupt-cells = <1>;
 			interrupt-controller;
 			compatible = "lantiq,eiu-xway";
 			reg = <0x101000 0x1000>;
 			interrupt-parent = <&icu0>;
 			lantiq,eiu-irqs = <166 135 66 40 41 42>;
 		};

 		pmu0: pmu@102000 {
 			compatible = "lantiq,pmu-xway";
 			reg = <0x102000 0x1000>;
 		};

 		cgu0: cgu@103000 {
 			compatible = "lantiq,cgu-xway";
 			reg = <0x103000 0x1000>;
 		};

 		ts: ts@106f00 {
 			compatible = "lantiq,ts-grx390"; /* to revisit */
 			reg = <0x106f00 0x10>;
 			interrupt-parent = <&icu0>;
 			interrupts = <143>;
 			lantiq,numofsensors = <0x1>;
 		};

 		dcdc@106a00 {
 			compatible = "lantiq,dcdc-xrx200";
 			reg = <0x106a00 0x200>;
 		};

 		vmmc: vmmc@103000 {
 			status = "disabled";
 			compatible = "lantiq,vmmc-xway";
 			reg = <0x103000 0x400>;
 			interrupt-parent = <&icu0>;
 			interrupts = <150 151 152 153 154 155>;
 		};

 		rcu0: rcu@203000 {
 			compatible = "lantiq,xrx200-rcu", "simple-mfd", "syscon";
 			reg = <0x203000 0x1000>;
//			interrupt-parent = <&icu0>;
//			interrupts = <115>;
 			ranges = <0x0 0x203000 0x100>;
 			big-endian;

 			gphy0: gphy@20 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x20 0x4>;

 				resets = <&reset0 31 30>, <&reset1 7 7>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy1: gphy@58 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x58 0x4>;

 				resets = <&reset0 29 28>, <&reset1 6 6>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy2: gphy@ac {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0xac 0x4>;
 				resets = <&reset0 27 26>, <&reset1 5 5>;
 				reset-names = "gphy", "gphy2";
 			};

 			reset0: reset-controller@10 {
 				compatible = "lantiq,xrx200-reset";
 				reg = <0x10 4>, <0x14 4>;

 				#reset-cells = <2>;
 			};

 			reset1: reset-controller@48 {
 				compatible = "lantiq,xrx200-reset";
 				reg = <0x48 4>, <0x24 4>;

 				#reset-cells = <2>;
 			};

 			usb_phy0: usb2-phy@18 {
 				compatible = "lantiq,xrx300-usb2-phy";
 				reg = <0x18 4>, <0x38 4>;
 				status = "disabled";

 				resets = <&reset1 4 4>, <&reset0 4 4>;
 				reset-names = "phy", "ctrl";
 				#phy-cells = <0>;
 			};

 			usb_phy1: usb2-phy@34 {
 				compatible = "lantiq,xrx300-usb2-phy";
 				reg = <0x34 4>, <0x3c 4>;
 				status = "disabled";

 				resets = <&reset1 5 4>, <&reset0 4 4>;
 				reset-names = "phy", "ctrl";
 				#phy-cells = <0>;
 			};

 			reboot@10 {
 				compatible = "syscon-reboot";
 				reg = <0x10 4>;

 				regmap = <&rcu0>;
 				offset = <0x10>;
 				mask = <0xe0000000>;
 			};
 		};
 	};

 	fpi@10000000 {
 		compatible = "lantiq,xrx200-fpi", "simple-bus";
 		ranges = <0x0 0x10000000 0xff00000>;
 		reg = <0x1f400000 0x1000>,
 			<0x10000000 0xf000000>;
 		regmap = <&rcu0>;
 		offset-endianness = <0x4c>; /* ?????????? */
 		#address-cells = <1>;
 		#size-cells = <1>;

 		localbus: localbus@0 {
 			#address-cells = <2>;
 			#size-cells = <1>;
 			ranges = <0 0 0x0 0x3ffffff /* addrsel0 */
 				1 0 0x4000000 0x4000010>; /* addsel1 */
 			compatible = "lantiq,localbus", "simple-bus";
 		};

 		gptu@e100a00 {
 			compatible = "lantiq,gptu-xway";
 			reg = <0xe100a00 0x100>;
 			interrupt-parent = <&icu0>;
 			interrupts = <126 127 128 129 130 131>;
 		};

 		usif: usif@da00000 {
 			compatible = "lantiq,usif";
 			reg = <0xda00000 0x1000000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <29 125 107 108 109 110>;
 			status = "disabled";
 		};

 		spi: spi@e100800 {
 			compatible = "lantiq,xrx200-spi", "lantiq,xrx100-spi";
 			reg = <0xe100800 0x100>;
 			interrupt-parent = <&icu0>;
 			interrupts = <22 23 24>;
 			interrupt-names = "spi_rx", "spi_tx", "spi_err",
 				"spi_frm";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			status = "disabled";
 		};

 		asc1: serial@e100c00 {
 			compatible = "lantiq,asc";
 			reg = <0xe100c00 0x400>;
 			interrupt-parent = <&icu0>;
 			interrupts = <112 113 114>;
 		};

 		gpio: pinmux@e100b10 {
 			compatible = "lantiq,xrx300-pinctrl";
 			#gpio-cells = <2>;
 			gpio-controller;
 			reg = <0xe100b10 0xa0>;
 		};

 		stp: stp@e100bb0 {
 			status = "disabled";
 			compatible = "lantiq,gpio-stp-xway";
 			reg = <0xe100bb0 0x40>;
 			#gpio-cells = <2>;
 			gpio-controller;

 			lantiq,shadow = <0xffffff>;
 			lantiq,groups = <0x7>;
 			lantiq,dsl = <0x0>;
 			lantiq,phy1 = <0x0>;
 			lantiq,phy2 = <0x0>;
 		};

 		deu@e103100 {
 			status = "disabled";
 			compatible = "lantiq,deu-xrx200";
 			reg = <0xe103100 0xf00>;

 			/* supported by upstream? */
 			lantiq,algo = "aes", "des", "arc4", "sha1", "md5", "sha1-hmac", "md5-hmac";
 			lantiq,dma-mode = <0>;
 			lantiq,sync-mode = <1>;
 		};

 		dma0: dma@e104100 {
 			compatible = "lantiq,dma-xway";
 			reg = <0xe104100 0x800>;
 			interrupt-parent = <&icu0>;
 			interrupts = <72 73 74 75 76 77 78 79 80 81 82 83 97 98 99 100 101 70 88 93 136 137 138 139>;
 			lantiq,desc-num = <256>;
 			lantiq,dma-hw-poll = <1>;
 			lantiq,dma-pkt-arb = <0>;
 		};

 		ebu0: ebu@6000000 {
 			compatible = "lantiq,ebu-xway";
 			reg = <0x6000000 0x100>,
 				<0x6000100 0x100>;
 		};

 		usb@e101000 {
 			status = "disabled";
 			compatible = "lantiq,xrx200-usb";
 			reg = <0xe101000 0x1000
 				0xe120000 0x3f000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <62 91>;
 			dr_mode = "host";
 			phys = <&usb_phy0>;
 			phy-names = "usb2-phy";
 		};

 		usb1: usb@e106000 {
 			status = "disabled";
 			compatible = "lantiq,xrx200-usb";
 			reg = <0xe106000 0x1000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <91>;
 			dr_mode = "host";
 			phys = <&usb_phy1>;
 			phy-names = "usb2-phy";
 		};

 		eth0: eth@e108000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "lantiq,xrx200-net";
 			reg = < 0xe108000 0x3000 /* switch */
 				0xe10b100 0x70 /* mdio */
 				0xe10b1d8 0x30 /* mii */
 				0xe10b308 0x30 /* pmac */
 			>;
 			interrupt-parent = <&icu0>;
 			interrupts = <75 73 72>;
 			resets = <&reset0 21 16>, <&reset0 8 8>;
 			reset-names = "switch", "ppe";
 			lantiq,phys = <&gphy0>, <&gphy1>, <&gphy2>;
 		};

 		mei@e116000 {
 			compatible = "lantiq,mei-xrx300";
 			reg = <0xe116000 0x100>;
 			interrupt-parent = <&icu0>;
 			interrupts = <63 61>;
 		};

 		ppe@e234000 {
 			compatible = "lantiq,ppe-xrx200";
 			interrupt-parent = <&icu0>;
 			interrupts = <32 95 69>;
 		};

 		wlan@a000000 {
 			compatible ="lantiq,wlan-xrx330";
 			status = "okay";
 			interrupt-parent = <&icu0>;
 			interrupts = <26>;
 		};

 		pcie0: pcie@d900000 {
 			status = "disabled";
 			compatible = "lantiq,pcie-xrx330";
 			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			reg = < 0xD900000 0x1000 /* RC controller */
 				0xD000000 0x800000 /* Cfg Space */
 				0xE100900 0x100 /* App logic */
 				0xF106800 0x200 /* PCIe PHY Reg */
 				0xF600000 0x100000 /* MSI addr space */
 				0xF700000 0x400 /* MSI PIC */
 			>;
 			reg-names = "csr", "cfg", "app", "phy", "msi", "pic";
 			interrupt-parent = <&icu0>;
 			interrupts = <163 164 165 38 161>;
 			interrupt-names = "msi0", "msi1", "msi2", "msi3", "ir";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &icu0  144>,
 					<0 0 0 2 &icu0  145>,
 					<0 0 0 3 &icu0  146>,
 					<0 0 0 4 &icu0  147>;
 			ranges = <0x02000000 0 0x0C000000 0x0C000000 0 0x01000000    /* Non-pretechable memory 32bit */
 				  0x01000000 0 0x0D800000 0x0D800000 0 0x00100000    /* Downsream I/O */
 				 >;
 			resets = <&rcu0 12>,
 				 <&rcu0 22>;
 			reset-names = "phy", "core";
 			lantiq,inbound-shift = <12>;
 			lantiq,outbound-shift = <4>;
 		};

 		pcie1: pcie@9900000 {
 			status = "disabled";
 			compatible = "lantiq,pcie-xrx330";
 			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			reg = < 0x9900000 0x1000 /* RC controller */
 				0x9000000 0x800000 /* Cfg Space */
 				0xE100700 0x100 /* App logic */
 				0xF700400 0x200 /* PCIe PHY Reg */
 				0xF400000 0x100000 /* MSI addr space */
 				0xF500000 0x400 /* MSI PIC */
 			>;
 			reg-names = "csr", "cfg", "app", "phy", "msi", "pic";
 			interrupt-parent = <&icu0>;
 			interrupts = <49 50 51 52 57>;
 			interrupt-names = "msi0", "msi1", "msi2", "msi3", "ir";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &icu0  17>,
 					<0 0 0 2 &icu0  18>,
 					<0 0 0 3 &icu0  19>,
 					<0 0 0 4 &icu0  20>;
 			bus-range = <0x00 0xff>;
 			ranges = < 0x02000000 0 0x08000000 0x08000000 0 0x01000000    /* Non-pretechable memory 32bit */
 				   0x01000000 0 0x09800000 0x09800000 0 0x00100000    /* Downsream I/O */
 				 >;
 			resets = <&rcu0 13>,
 				 <&rcu0 27>;
 			reset-names = "phy", "core";
 			lantiq,inbound-shift = <13>;
 			lantiq,outbound-shift = <8>;
 		};

 		pcie2: pcie@9B00000 {
 			status = "disabled";
 			compatible = "lantiq,pcie-xrx330";
 			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			reg = < 0x9B00000 0x1000 /* RC controller */
 				0xA800000 0x800000 /* Cfg Space */
 				0xE100400 0x100 /* App logic */
 				0xF106A00 0x200 /* PCIe PHY Reg */
 				0xF700A00 0x100000 /* MSI addr space */
 				0xF700600 0x400 /* MSI PIC */
 			>;
 			reg-names = "csr", "cfg", "app", "phy", "msi", "pic";
 			interrupt-parent = <&icu0>;
 			interrupts = <84 85 86 87 61>;
 			interrupt-names = "msi0", "msi1", "msi2", "msi3", "ir";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &icu0  27>,
 					<0 0 0 2 &icu0  71>,
 					<0 0 0 3 &icu0  89>,
 					<0 0 0 4 &icu0  90>;
 			bus-range = <0x00 0xff>;
 			ranges = < 0x02000000 0 0x0B000000 0x0B000000 0 0x01000000    /* Non-pretechable memory 32bit */
 				   0x01000000 0 0x09A00000 0x09A00000 0 0x00100000    /* Downsream I/O */
 				 >;
 			resets = <&rcu0 60>,
 				 <&rcu0 61>;
 			reset-names = "phy", "core";
 			lantiq,inbound-shift = <14>;
 			lantiq,outbound-shift = <17>;
 		};

 	};

};

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
