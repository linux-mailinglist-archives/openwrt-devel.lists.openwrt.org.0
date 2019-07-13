Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297A96796F
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 11:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhLoaZbEAqsTenONlIj75mzCigPWnL1GeJmcUvTeBJs=; b=TrFVr5V7Rb+SsV
	eIiTympqvSxd07QCPF5VwjqqMmSzDsV2yz6EKOLvBTwoO0rnTNIDfHLQh8ygw2usrokHGlzN8bEXv
	zyyXZhQH6O+p67+yS/JNsCAzbnAvhwc6NEL/Pw+EUVshvUQ0sa2KJp2V+mhR1l6ci3x9IMFWMYS3U
	mrNsY/Ej+tSz9Svjb+hrA1wTNTaoVIdc4QNe8Fhqp9GyoFQduStpmR2R/RgSzNUj2LgtOftPHcUKb
	dWoohdH4KUEKlxUYd2z1ch4rLe48YgnNfWu5HvFLh8K7BeaZAPWI1ZXd5Q9y6lCmVFKv2zIbKRHme
	JI1XF3I0k89C2cxgb+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmE0w-0004vJ-Eq; Sat, 13 Jul 2019 09:08:18 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmE0b-0004uf-Tf
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 09:08:00 +0000
Received: by mail-oi1-x243.google.com with SMTP id t76so9144213oih.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 02:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0cW7GbVL3ZW9k9AVv+PzXXqZDdG/RmgrEuK8XrUFPWU=;
 b=cbwsgbqR+IFF/j2DYMkfsKwfwgpGA7SxPhEtz9kN0mK9OZyTjkZsEcgtGNhnIJXUcL
 fDf2RVu4GrANJkwGrJof5TTOyQTYV8ZcuYUkXo3xCqkf7vVHYPOC9MUFowUPpLEm33Lm
 lt+nmKUIsIzEc+Oaze0KcapQMpFGJWjEyQ4710NEDh/Xajiib27kL4vYvZR1YsbhXB/P
 +YleeKlNCePJUmFA92JnBb7WeBcJNS1KGktckXNi2Y+dfJ6qopI0OkG0OKnbRSOaxWIl
 WqeSOTMzEbLN+W+v+1Bx9fpnIUBIDJj9iVYbSka0uTJhei3fWqZdEp98ZNGnZ66B5pVF
 HosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0cW7GbVL3ZW9k9AVv+PzXXqZDdG/RmgrEuK8XrUFPWU=;
 b=RhcCFvroLGrB6XG78t64xmJg5ttAHy01USiDkmE47BbLbLlC3ginmwt6ywjcCNmzLF
 zPcJBNpQvC8JCyyI5Flc9UFhC2CSAmzetIlXQhaz4sjLmod02KBu5Yg8bDwcJyxQeyw4
 Y5T0c5ocVIUkihgZk/Z9O+NpkcKqz4ozFGXeG/7bDjChejGLnTo52Vgv6fiT5CHv2vIa
 9aG0S9cbcIbq0C44ucIyvEHeI8Tlo0njmXzMq1uOiy9CemVFEcMRANyyqwomFaEjx/Rl
 W2/4fEFJnNfrlxPrxswXavd9oM+i0AtHUrlEt/kuverK/2gKmCkDF0yk7/6q5Aha6Z8z
 u8Cg==
X-Gm-Message-State: APjAAAXTrb7V0mvdwSbbStmnnNHVeG/RgLOdwGnw+TX2p8P66nEtkgKD
 IcSBaWs0zvYKWnPa+SB8h4viEw+17ukF1xYIuE0=
X-Google-Smtp-Source: APXvYqyiWymTY8os2YorYP7BMzSVb2irQ0ojovXh1m+XTSuwRa5Gyvx/j2X8/m2mAzg6QDBb8Cx/pu7aJqabcei5Y8Y=
X-Received: by 2002:aca:210f:: with SMTP id 15mr8149052oiz.24.1563008874269;
 Sat, 13 Jul 2019 02:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190713084747.9347-1-foss@volatilesystems.org>
In-Reply-To: <20190713084747.9347-1-foss@volatilesystems.org>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 13 Jul 2019 17:07:43 +0800
Message-ID: <CAJsYDVJ_OcQ=pqwnwOfQQ5QJGs9fQzb7pE0wy0w87V6uj7i+Tw@mail.gmail.com>
To: Stijn Segers <foss@volatilesystems.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_020758_168815_F823E424 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ASUS RT-AC57 only supports USB2,
 not USB3
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

Hi!

On Sat, Jul 13, 2019 at 4:51 PM Stijn Segers <foss@volatilesystems.org> wrote:
>
> Commit 14e0e4f138e35c3e2a15cc3a836c939547ee053b added support for the ASUS RT-AC57U but erroneously
> included kmod-usb3 whereas the RT-AC57U, despite the mt7621 SoC supporting USB3, only has a USB2
> port. Make DEVICE_PACKAGES reflect this.

MT7621 uses XHCI controller for both its usb2 and usb3 ports. It needs
kmod-usb3 instead of kmod-usb2 even if that's just a usb2.0 port.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
