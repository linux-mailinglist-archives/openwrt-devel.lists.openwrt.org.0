Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E559A8C43E
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 00:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFiTB1k9yxlWO+sKqGA1yUQoGAFvlvpa3lOVco6ORfA=; b=ANHqiFiH7fn0NP
	T7engWTmZGIRYt1+SBTUvgZ0Q6cEkx7PxG7ibeF3mtkCwutKlns0XaqMxs7F86jCPQL0UMSwkmGWX
	p5MqjzVdxvedGma6/HQjz/SkjzTYV1rwbG6F+l13K7lwLaKDW8Q9DXU0ejyCUrhinm6zIK8artEBr
	viMcB4jZ6petOwrH7OYp/Hq7B4Sy/xJGGXjGEUiFDNAcQV8PUuNd0dSTlLFoUttfqqDL+KqCdO1tS
	i5C7WTxkBP2vyJyTPgY4DLfDvAMlxgTfkUjusmI/0gj1qJw3HWtG7gbNyApBTEzXKKDCyPbTHts/q
	oe2vcyKqPaR+9AO5Ptxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfGr-0003UE-7Q; Tue, 13 Aug 2019 22:28:01 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfGi-0003Th-VZ
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 22:27:54 +0000
Received: by mail-ot1-x343.google.com with SMTP id c7so5272098otp.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 15:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qD+0BI/IiMhzYKv9nxAvQfy+YDeeM6WAs3/2Hk5yRNU=;
 b=N76CR40X58iL41JNTpqc+qbv89fJieUeMWfyYYjb6g2o+I4u0/DJYBgmy26yW41yT2
 h0p0ZwCGJSaHXDn2VE28d1BU+oVHkP0zIa5bL2zsixBdtMKndUV02JiwCoMpsuusptoK
 n0uM3ZXMp1gzi75Mp3lTN/WR1zxOKVhXC0wEa5nI/v4AiF+B5ltJ/HNwuiOLI1sCH2Uy
 d+Ri0OTKn7d9tLjAfGhIYicVuIKCPJlIfwIA6S4n21pCDwMuxAaa8iucHW4OgVGvFEPm
 P3RIN0bqR9mX4gPDsHjnNR1gRu++/atcw5Op+rs2DZDHC59YMXcgt/YUF9qR9XumK4Sc
 rstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qD+0BI/IiMhzYKv9nxAvQfy+YDeeM6WAs3/2Hk5yRNU=;
 b=nCUYOHfJsOAwJIEagwvPgtWOVfxOcG1nXVnCD1WRhUUudVzHVt3wW+TBI2N+O5WLPs
 GMy3AUkuWzdUivBQCIDJVOK7XDEAv//MXnGwfXc4ng033avWNq07DLB2OcfGJfYhwD17
 CLuHdwNwZf908kPjlpSoej1Uy9fIuc4QPCOiFG+JkH85NNX6AlMG40Xh0L23A4aggrgt
 Y/q1SqpUX+gLKuze1YzYZ5yreNDMSI1m2zdO9H3+uXuT8F6Z6Lx1wKoiSmDpfpO2+SYL
 M09EzJMxOVSclbNHyWkMWwnHqg8XPHgPwuwMsUq27+DzyKlvf6EqYweJKxOM8BUv3e+h
 ZhMQ==
X-Gm-Message-State: APjAAAVf+OyZl0AsSYu98Lr/DMKEJXgcg3bM5/2uQCb5lU2tYg1G4B/X
 WmQiKNhnAEGPxJYULMiwbLxjE9C/Dq03P3xhmtg=
X-Google-Smtp-Source: APXvYqzSlsmtt0gogT8tnXejt9469rCVeluHHcVdJu1FtxVcarTdBeUnEWKRe+KhYiGpjjhirmDyZl3lXrdBsWws8yM=
X-Received: by 2002:a9d:201:: with SMTP id 1mr32850453otb.279.1565735269419;
 Tue, 13 Aug 2019 15:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170445.4607-1-rosenp@gmail.com>
 <20190503171748.GA3101@meh.true.cz>
 <10C80B0A-E4F7-4619-85BE-B78580C58148@gmail.com>
 <20190503185541.GG71477@meh.true.cz>
 <1556910707.1846.0@smtp.gmail.com>
 <CAKxU2N-LasxZy-Qxie0GavPn+Douq4nkyHZD-y82p6VCS5CfzQ@mail.gmail.com>
 <20190517073417.GG63920@meh.true.cz>
In-Reply-To: <20190517073417.GG63920@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 13 Aug 2019 15:27:38 -0700
Message-ID: <CAKxU2N-zhzJT79dSqEo_Ue3aovgeyqsuu5+LUQo+27a7nFRYQQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_152753_017840_0D7E507D 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] libbsd: Fix compilation under ARC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTI6MzQgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4KPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMDUt
MTYgMTg6NDc6MDddOgo+Cj4gPiBBZGRlZCBtZXJnZSByZXF1ZXN0IGhlcmU6Cj4gPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbGliYnNkL2xpYmJzZC9tZXJnZV9yZXF1ZXN0cy82Cj4K
PiB0aGFua3MsIEkndmUgbWVyZ2VkIGl0IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLzRmZmEzOGUx
NWNhOQpDYW4gdGhpcyBiZSBiYWNrcG9ydGVkIHRvIDE4LjA2PyBJdCBmYWlscyB0aGVyZSBhcyB3
ZWxsOgpodHRwczovL2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9yZWxlYXNlcy9mYWlsbG9ncy0xOC4w
Ni9hcmNfYXJjNzAwL2Jhc2UvbGliYnNkL2NvbXBpbGUudHh0Cj4KPiAtLSB5bmV6egoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
