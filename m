Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A367A0C
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 14:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWXnpE0lvDvZEyCF2x4djdlrwEr4X3JGqge+nVXS2UM=; b=bT2jtciPs+hdV2
	aNpwuW7zhbDilfrIeJ3ex6P27OGXqZ/3UvSxIjfDjZTYSpKnLAGt0euHpaEzP/q7x37CQPaqh5oXS
	OUYywLXwRH9K0m3bc7O3zOu9M2Vcxp/eU2F/mvhMPGSl5YQ/uODg+CLMft2dfhxqfmcBNWfu4ZBNi
	J5m7ae4M7cyk23D8Noj0ug4nPRS6RHFiXFWReac+PzDC4qISvWHsvCVvY3Ysumif7SiW4j4pPW99Q
	MqzZsS0LVH2uunsAI2VYois8yd9EU/c60Bod/Ox5ajCp+f3gkiE90HjR1uwYWRXviA3aj5QE1wqWJ
	GhLcXvxLNqImRYfoynyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGku-0007To-2L; Sat, 13 Jul 2019 12:03:56 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGkk-0007TK-Sd
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 12:03:48 +0000
Received: by mail-yb1-xb44.google.com with SMTP id d9so405507ybf.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 05:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VeDMWCHWgTGJHAM774bATTOCNAGeGXRJWL78zo0Tz8c=;
 b=mE8wYlTkuA/DBVEYurFbQjQLp2NJxeq7TDajyLvcaroiAM20qVvlZzcYWS8QMEROqL
 d8cMzAt5iypu+759Vb3HmE8eX9HF22IxTzGfimfb9lba4JBi2OgYNTvDm4RHCjz1w8Yh
 4LhjP/Ryiq9QUm/Dlb5cJKwDFrmmXo0kCUJv6wOBfKMIPsY+OgvsTPf88P63P8ydhd76
 xTKI/471WMdp4c8lbFhjiU1eZPTqM+JUoBC5pdo9zWPrCarVq9fWTPR5123cUgsbhIn9
 5x/ORt23HmlQ722hu2fy3aiHDzNicJsCd3A4fdH4/kp0dut7HNOOD3dAOxeDuA6Up0Y5
 A5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VeDMWCHWgTGJHAM774bATTOCNAGeGXRJWL78zo0Tz8c=;
 b=cXJGTNZmlwjSfFtQzSKs2dpy8gf0odrLKyh8wFAA12XiF3FJePzTW0pmtTgWEvanNK
 2qoOv3b0DJhRtRS8LJQEEC7I42jvpAmQr0K+Lq6n+e3L/bCsAZW6u4FFoTJuwuXr63h5
 scsM1zeQegw2WOFoe5Bbyo99pM4gWSqOthNUkAdvUE4C/0Mp7IQvFJLC3CecMDPiNt4m
 eKkpBCP/+0oAWjgNtxwqBhXAV8U7RaB/eSTgudekX4/L70MaCpU/1QeOf1EnB9auXNgl
 S5dLDqQQydB7MQPz4Af2IGvcWufh5XMP1+93E91SfTMSINCtX0cRYgpo7nExy5xEP2rd
 MSkA==
X-Gm-Message-State: APjAAAVaO41yU9ZCmZcF8Izar/ia/CxdhW+c+Sc/zRmFhuREYDmfRi/r
 vfPlJJoMOpDO4XLh9Dotg9AUy+50LmxDrZbnKYlGCg==
X-Google-Smtp-Source: APXvYqyvxji81PIzxxZO5Am8u51efAwVTX0KkymAIyTOoqg84HxJmVikCKMzdlblDJxjAm7K9J9YMeOODCmUrCbLIJo=
X-Received: by 2002:a25:1c43:: with SMTP id c64mr4577639ybc.112.1563019423471; 
 Sat, 13 Jul 2019 05:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
In-Reply-To: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 13 Jul 2019 14:03:32 +0200
Message-ID: <CACna6ry7om48L8=tngja5zF1cp6HMrjJRYm2YEPjiR1sezPOAQ@mail.gmail.com>
To: Luochongjun <luochongjun@gl-inet.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_050346_952515_2F46F5E1 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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

On Wed, 26 Jun 2019 at 12:27, Luochongjun <luochongjun@gl-inet.com> wrote:
> This patch supports gl-ar750, which was previously supported by ar71xx.
>
> Specification:
> - SOC: QCA9531 (650MHz)
> - Flash: 16 MiB (W25Q128FVSG)
> - RAM: 128 MiB DDR2
> - Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
> - Wireless: 2.4GHz (bgn) and 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - LED: 3x LEDS (white)
>
> Flash instruction:
> Support for sysupgrade directive upgrades, as well as luci upgrades.
>
> Signed-off-by: luochongjun <luochongjun@gl-inet.com>

Isn't your name misspelled there (a missing space)?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
