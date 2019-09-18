Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC755B6353
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 14:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uja7Q218e+OrbCJ7BOXnlMks1oVzveC0AvLFRYwOb/g=; b=hlHHt9M9TI4L1v
	A6v/JHpydqaYvMv02xvrzKvyi0ZGav0M7w752eucpceeNz0yH0rBBaJIVRUcoyiumBhKrMGeyR7Yy
	uu6Cyaqojxu5D3ypR7Dx3U7EmkD8I5TOb8Lxbc7C9BgsMaQTwKQvTzeudVIxD8RlGPMSiR5c044UM
	wYKzSS15quP3dwuwPGu0XDkaQ0uVHmQ3GhYRmEBE1x92tSaeycC0kMYpC0QG1j3jJ9pxK3N9p/Q5u
	7+7vzu8lkVk7sazZ9myKJw+Ft0jzuC3n2spr4tyOdCb/2sXJdCeQcAFPNEmbQvV8q65MqVGtHFVOO
	jXquWtBdzZsmCpuLzp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZAf-0001gN-5v; Wed, 18 Sep 2019 12:34:57 +0000
Received: from mail-yw1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZAM-0001g2-CZ
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 12:34:39 +0000
Received: by mail-yw1-xc33.google.com with SMTP id 201so2373823ywn.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 05:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=B8cgGZj1P2rFvKCcBeCkEQg6UpLUgGmSK3csvVC1MB8=;
 b=g1Vyv8gvrIQoPOOaomg6sienx83eh+Kk6hAIxAqaVkqXA6QX5P8fC+c7ZapnGP6DuW
 VWCM0TTt2vlkI3prckub4fRqdCaxM2k8/0GpuNaw0I2y+94t1VdT9mJoCWUjkrYabtvH
 t0BZTc21U8dc6Z8Jl+64HwWPdX9UUiO3/mJzsItydypQ9nU5EF2yGyAs8Cx3pTPIy9uS
 yRWbr5fRoS6OchdOzXcWrpicl11Jfa61q7ZEN7zZftBj4aHmuZFff6ifq88y3ua3R7/2
 imh5dXX9++9vyMl8QAr69jY4kwhx8x3kfGSsWpJ/MVMKnRHcfQBG2wzigzwWx0XyYijZ
 grLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=B8cgGZj1P2rFvKCcBeCkEQg6UpLUgGmSK3csvVC1MB8=;
 b=OTKP/PfXNDnjCFlbesPkXLkGPa9endAtsjA+p7iPQHke5CtHan+vbzL/dzTFlbAwq/
 rY7WkFwBlkMQPmMOAvxyGikw8g4Wx04ZPxaP8c4oAq4tc7MZdKGOC1bQCHp5QzTHTdhw
 7FjmCuS2FfsqEGnZB0P2yYJij4IecDwwN4WXouR6PhyUSWU1orNk9d4ESinQur28LC5/
 Yzh0z92iT3JvRY01tpNfCFJfGkewshsBDkSVQuDd//8oHgzDXOon6JN47I8uDC/evocu
 PGg6k2mKpISikNb+lJj7nmZm+WBE39Vpa4uKajJbojgXOjm597ZGDfDl11OwABxcxpWR
 hgcg==
X-Gm-Message-State: APjAAAUspEeShbj+LLbizrsTX0y78ZQOaSiQ0FGTqvdL+d/uZy0wlOBJ
 /dhYOOwfT677JUPcVN7EXXm9ktAZlmZ4YIwYf1EsnrR/
X-Google-Smtp-Source: APXvYqyR8p+ugUK5mLy7MCTYaNgSw1vGBxAM1/QD2KexxEoZp0yU2yTJ1P7bFHGXtGQRFc/p7k2Jq2ZWAcckXLKd1VY=
X-Received: by 2002:a81:af21:: with SMTP id n33mr2994923ywh.131.1568810076525; 
 Wed, 18 Sep 2019 05:34:36 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 18 Sep 2019 14:34:25 +0200
Message-ID: <CACna6ryqSkHAm1Z1ppcTQNdfqqbXXRbbuiO-kuu465PsKnBNxw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_053438_457023_B75C8DD7 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] Target selecting a host package
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
Cc: Jo-Philipp Wich <jo@mein.io>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlcmUgYXJlIHR3byBpZGVudGljYWwgZmlsZXMgaW4gdGhlIE9wZW5XcnQgcmVwbzoKcGFja2Fn
ZS91dGlscy9vdHJ4L3NyYy9vdHJ4LmMKdG9vbHMvZmlybXdhcmUtdXRpbHMvc3JjL290cnguYwoK
SSdkIGxpa2UgdG8gZ2V0IHJpZCBvZiB0aGUgbGF0ZXIgb25lIGFuZCBhZGQgSG9zdEJ1aWxkIHRv
IHRoZQpwYWNrYWdlL3V0aWxzL290cngvTWFrZWZpbGUuCgpGb3IgdGhhdCB0byB3b3JrIEkgbmVl
ZCBzb21ldGhpbmcgbGlrZToKVEFSR0VUX0JVSUxEX0RFUEVORFM6PW90cngvaG9zdAphcyB0YXJn
ZXRzIHJlcXVpcmUgIm90cngiIGR1cmluZyBpbWFnZSBnZW5lcmF0aW9uLgoKSXMgdGhlcmUgYW55
IHNvbHV0aW9uIGZvciB0aGF0PwoKLS0gClJhZmHFggoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
