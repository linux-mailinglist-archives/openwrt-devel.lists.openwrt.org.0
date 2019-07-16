Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13E66A0C3
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jul 2019 05:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YfuseJcgLdjog1RakD0WO4hlhKO+B6FWgzx7e/OVgEs=; b=S2CKusiJYlGJiXuHvE+N3jtrmB
	S1euooPMmJWsRacbUmDlzmajqAiQK+kKklxkIRdlhfgekWVyzquWEqfFAhx2C75bOeIORynqzmo77
	l6W+Mp7ctMQLTQ45C2Ug9YD7y82Ekii/OW0P/UhifBLOfVLVbhoCiHFr7dANut6jBq4eBIa/g7Plc
	NriFNqJYVo0tzJ/du3tHGAhcOJaJ5HxOzfS1LTWbQB23I8uEmi2BMibm/0cDs3/zY3dszVCF8/8HJ
	m59Z+cxwYNGvl0r51IqFOdixtp9r/8kZh7WNsx7WUd4DROlCpmHUwpBgmfim7boSaMyKeTrMIBKwR
	8jDGl1zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnDz3-00077b-3u; Tue, 16 Jul 2019 03:18:29 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnDyr-00077A-IB
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jul 2019 03:18:18 +0000
Received: by mail-oi1-x241.google.com with SMTP id w79so14415016oif.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 20:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kJ1/gC1kVxh+cSdvw5T67/R+jZQhR/6TRXJDD3nYIgw=;
 b=DkEtDJGN2HMbA2Au1fFNCR8U9tJU/kNXJnH8TYBndfx0yoEBE8p3QMQrKrC5CyQe88
 9RkazNNdDf3T5ib+twxmLb0MmnPddwHGrGieSuGZxAfPf/StOJ4nOzHTz6Hx69W1ieAV
 MBKKuIW27TY4Rp6oxHxfMKSATIDh1N5ptgnxG8EPDrzbQkGNbOrzN7krSshfR/e83v69
 YTNo3ogqWlXDW9UOrpuKiPc2duOrYwEzmQI521iCX5Yckn/4j8RROffiZO/HwEVNl+LA
 cKT4bkGXYAqgBAwvH6m46Ozu/INdKZns+CWNk60gFMjydYVFvbHdM7J+FbVdKF5bCHMB
 fyQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kJ1/gC1kVxh+cSdvw5T67/R+jZQhR/6TRXJDD3nYIgw=;
 b=tCHyxeAxmb3y5tk5+B1oB8klOI9VcBzd9MUh0lxzyp1liZDW7fwIKFfbAyAOILyDqS
 iKMcgyI6PFsepZzA1Nmnopw90LtrMl5xvH4UFTWPQBWlW1TLchh3/Hf+jZmpwNRacdQc
 ohIGPWHy0z4CwufFoSsC0wHaqN7h2f2Xz2JSa1b1QbVmMnD9CQtK2QMcJkT8RiVhVXXm
 JzsqLqvAkLW/OToh+0ZmJa41JINb1ohU1y1IS4Es3xHVQf5EdX1pNbhvmA9o+WGrvBLl
 Q1FxA1GQjjsrXACp3IAErooJMm16yvKI+EH2Eag5nTp10E3SS8lHEmnD4gxRYUSSR4yY
 t4/A==
X-Gm-Message-State: APjAAAXo+RYy1pXdCVTPfSUG1ubQKzywSJMe3nNxzK4ONbsaHMyGnvMo
 Lifyw+RYOHYxIGoxrvz9MB75oJlk+69GiK10YBt6Wk50
X-Google-Smtp-Source: APXvYqwWttLESJNqhdh04uJLwdxWCikH75/5DWpgKN4f79DmYGs4G10+WdjEEOkPWIzn7ekAEorNEd/lytVUZi/Embk=
X-Received: by 2002:aca:170d:: with SMTP id j13mr3111904oii.77.1563247095629; 
 Mon, 15 Jul 2019 20:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190714163428.26303-1-gch981213@gmail.com>
 <20190714163428.26303-2-gch981213@gmail.com>
In-Reply-To: <20190714163428.26303-2-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 16 Jul 2019 11:18:04 +0800
Message-ID: <CAJsYDVJ98Xp1Wp6A0av7RT-jQcmKjRy+p87GPhVSuaaRR9ZUQg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_201817_630020_626115C9 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH RFC 1/3] ramips: mtk-mmc: mt76x8: check
 ESD_MODE before applying AGPIO_CFG
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

On Mon, Jul 15, 2019 at 12:34 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Since mt76x8an ver1 eco2, SDXC pins can be switched to the
> following pinmap:
> sd_d1  -> PAD_I2S_SDI
> sd_d0  -> PAD_I2S_WS
> sd_cmd -> PAD_I2S_CLK
> sd_d3  -> PAD_I2C_SCLK
> sd_d2  -> PAD_I2C_SD
> sd_clk -> PAD_GPIO0
> sd_wp  -> PAD_TXD1
> sd_cd  -> PAD_RXD1
>
> To use this pinmap, one would need to set ESD_MODE bit (bit 15)
> to 1 in GPIO1_MODE and switch other used pads into GPIO mode.
> In this mode, we don't need to switch ethernet pins to digital
> pad.
>
> Check ESD_MODE bit before applying AGPIO_CFG and use rt_sysc_m32
> to set it.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Pushed this single patch since it's just a fix for the original hack anyway.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
