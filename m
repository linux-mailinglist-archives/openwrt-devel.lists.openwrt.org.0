Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BCDB4FDB
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 16:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Psg+lBBYCbfhz1ly4ODOre9JXrCxTUR+pXmugzHUd6Q=; b=NjT
	PCqM/5sFrZO05BnVYcdktGwDWWZgId+L2KY9P5eCBbDQtpM4LFTWx6fS7fCsYUlzY8H93TdJTEnAQ
	4MzEYL/MUxsi4C3DP42uO3+dOXIlvluz+Xp6Y6pMQr1/QDpgnEOvlgE0M0Srcm92+82i31+95PuCn
	iG+rC7DxAPifZaN7VhP5TCRE8cQkSFs+NklvOgu8959RnjJg2G21pN/dKVj0/zpy7sUfRWj4OWdMK
	Ndgfofkps+jwQpJ1pIUo//nxId3AsxE2OnMEK+1yKNMiSJRy1fAJ/qpURUmsrObsdhZ4oV5OoZqqx
	6rBF8VFf4LLwwqqswVoWGZu8UWExoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAE5y-0000RT-DK; Tue, 17 Sep 2019 14:04:42 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAE5n-0000R6-L5
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 14:04:33 +0000
Received: by mail-lf1-x143.google.com with SMTP id u28so2991779lfc.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 07:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BxbTCRdsYk2Q6OvKAJsveG3klNjxz7cfrfAZhFzZlP4=;
 b=G1Hv7eunZw8Oo1C4EqX8VIZLVoR/HG/TD17omZJgKUqDzZOyVb5pa4Ia0T7C4pdtG6
 bnqhwSaqnuXRQOIeQYoLLftV3uN/cvqKA8gKyJNLICLP6fx9zGp4iDn/3iDHVxmFYOKG
 D40Ai2+JECu31jkp5BKvE2bb2aeen6iGw8OTIA4FZGm6+Sk8FUCPAAYv9KVu8ZnNX0Ib
 kL/7T43L1PdSQHO5LyreK4TcB0NalQ1wKCxqQby9ZtXA0qEi2Dfj5ocwBvQQihjUbXWg
 QtvUKGOi71AK8z8XPWbxmB/srovwHoXc9OCXcpVp/gJ+wuTpwBOeUB2akxNUFSYQx+W6
 MHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BxbTCRdsYk2Q6OvKAJsveG3klNjxz7cfrfAZhFzZlP4=;
 b=Ovhyms6HPnCNmPKXxp0Q3Ao+66N6VkbsOGrXoREE+7G9UnhaiwpQ7/ezlezZCs40aF
 2VHAIqsVeo11VXyhOMscFemJ14hEHvDmg2RDbQikkb9k9I3O2LtmlpbN3QgORJdg3+LF
 LKWJ4h4zJT2e3xRZOzxjZBBwhJsBEdzeYByJMQ2T7pyaWSuzMFo8QGCBlnkb85Sioq61
 /egXYsocrEBqZJfXiJf2A5fIwvkpujKjegoaW4nRhCRFXWkvOkce4CmYl06amMK8/fM6
 O6MiJR8a+hhIjwNDwWp0yoFgsFhRni0wyG6/puxINhfV9CHre3ahi5d1TynY5z5pv4dk
 nBKw==
X-Gm-Message-State: APjAAAXH5Qrf58KKyUzP6WtNlqvR17WX1aVFbA5R3fxgPWWLMErEz2i5
 HOahUbZyX3DuAOePmejPczJF+GSN5974cBRNxfFjGXjh
X-Google-Smtp-Source: APXvYqxRnhwQQHql7VsyyepGBO013WeOvasEtuwQA72mSoph0sNkKtDdmJXECYdJPySiq9NcL2sRgyIofapvqEERCXg=
X-Received: by 2002:ac2:47f8:: with SMTP id b24mr2259082lfp.134.1568729065270; 
 Tue, 17 Sep 2019 07:04:25 -0700 (PDT)
MIME-Version: 1.0
From: sven falempin <sven.falempin@gmail.com>
Date: Tue, 17 Sep 2019 10:03:59 -0400
Message-ID: <CA++fYEiEA+s0j5w6E3ph_b1A2ZbpcmSkLK=b0vqK2YkB+r=-UQ@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_070431_712740_18CC6DF9 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sven.falempin[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Pre UBoot initiliation required to get MDIO working.
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

To anyone with DTS and qcom MDIO/ESS knowledge,
please help, you are my only hope.

Using an QCOM ap.dk04.1-c1 / ipq4019 device,
I ran into an initialization problem for MDIO driver.

The problem only appeared when I started booting from the device,
because executing 'dhcp' in uboot , do some initialization that fix the problem.

I m running openWRT current, 4.19 kernel with 5.3-rc4 wireless code
and a few other patches, ( openwrt r10985-4364dd244c ) , and minor
tweaks.

Also , to run IPQ4019 and ESS, which kernel offer the better driver
support right now ?
4.14 ? 4.19 ? 5.3 ? 3.x is not possible. (regarding Voltage regulator
and RTC for example )

Nevertheless I am not sure if my DTS file could also be a source or trouble;
My DTS contains :
/*          */
   mdio_pins: mdio_pinmux {
    mux_1 {
     pins = "gpio6";
     function = "mdio"; // ipq4019-pinctrl 1000000.pinctrl: invalid
function mdio0 in map table
     bias-pull-up;
    };
    mux_2 {
     pins = "gpio7";
     function = "mdc";
     bias-pull-up;
    };
   };
/*          */
  tcsr: tcsr@194b000 {
   status = "ok";
  };
  ess-switch@c000000 {
   status = "okay";
  };
/* */

  mdio@90000 {
   status = "ok";
   pinctrl-0 = <&mdio_pins>;
   pinctrl-names = "default";
   phy-reset-gpio = <&tlmm 47 0>;
   status = "ok";
   bias-disable;
  };

/ * */

In the uboot vendor, the DHCP  'init' the ess, and enable the kernel
to detect the ethernet phy:
( only two are wired , and i only tested eth1 because it s the only
one that matters for now )

        u32 data;
        ipq40xx_ess_sw_wr(S17_GLOFW_CTRL1_REG, 0x3e3e3e);
        /*
         * configure Speed, Duplex.
         */
        ipq40xx_ess_sw_wr(S17_P0STATUS_REG, S17_PORT_SPEED(2) |
                                        S17_PORT_FULL_DUP |
                                        S17_TX_FLOW_EN |
                                        S17_RX_FLOW_EN);

        ipq40xx_ess_sw_wr(S17_P0LOOKUP_CTRL_REG, 0x140000);
        ipq40xx_ess_sw_wr(S17_P1LOOKUP_CTRL_REG, 0x140000);
        ipq40xx_ess_sw_wr(S17_P2LOOKUP_CTRL_REG, 0x140000);
        ipq40xx_ess_sw_wr(S17_P3LOOKUP_CTRL_REG, 0x140000);
        ipq40xx_ess_sw_wr(S17_P4LOOKUP_CTRL_REG, 0x140000);
        ipq40xx_ess_sw_wr(S17_P5LOOKUP_CTRL_REG, 0x140000);
        /*
        * HOL setting for Port0
        */
        ipq40xx_ess_sw_wr(S17_PORT0_HOL_CTRL0, 0x1e444444);
        ipq40xx_ess_sw_wr(S17_PORT0_HOL_CTRL1, 0x1c6);
        /*
        * HOL setting for Port1
        */
        ipq40xx_ess_sw_wr(S17_PORT1_HOL_CTRL0, 0x1e004444);
        ipq40xx_ess_sw_wr(S17_PORT1_HOL_CTRL1, 0x1c6);
        /*
        * HOL setting for Port2
        */
        ipq40xx_ess_sw_wr(S17_PORT2_HOL_CTRL0, 0x1e004444);
        ipq40xx_ess_sw_wr(S17_PORT2_HOL_CTRL1, 0x1c6);
        /*
        * HOL setting for Port3
        */
        ipq40xx_ess_sw_wr(S17_PORT3_HOL_CTRL0, 0x1e004444);
        ipq40xx_ess_sw_wr(S17_PORT3_HOL_CTRL1, 0x1c6);
        /*
        * HOL setting for Port4
        */
        ipq40xx_ess_sw_wr(S17_PORT4_HOL_CTRL0, 0x1e004444);
        ipq40xx_ess_sw_wr(S17_PORT4_HOL_CTRL1, 0x1c6);
        /*
        * HOL setting for Port5
        */
        ipq40xx_ess_sw_wr(S17_PORT5_HOL_CTRL0, 0x1e444444);
        ipq40xx_ess_sw_wr(S17_PORT5_HOL_CTRL1, 0x1c6);
        break;

        mdelay(1);
        /*
         * Enable Rx and Tx mac. // this one ?
         */
        ipq40xx_ess_sw_rd(S17_P0STATUS_REG, &data);
        ipq40xx_ess_sw_wr(S17_P0STATUS_REG, data |
                                S17_PORT_TX_MAC_EN |
                                S17_PORT_RX_MAC_EN);
        ipq40xx_ess_sw_rd(ESS_MIB_OFFSET, &data);
        ipq40xx_ess_sw_wr(ESS_MIB_OFFSET, data |
                                        ESS_MIB_EN);
        ipq40xx_ess_sw_wr(S17_GLOFW_CTRL1_REG, 0x7f7f7f);


Is there missing pieces in the MDIO / ESS driver , or can it be the DTS file ?


Best.


-- 
--
---------------------------------------------------------------------------------------------------------------------
Knowing is not enough; we must apply. Willing is not enough; we must do

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
