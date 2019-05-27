Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3532ADB6
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 06:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2wJrUAbNO83nvh0aHuKfbnWicy1S2gmJhLiR5ycb8Qo=; b=a/k+x2PSV077SWXxxEl8ucUhRS
	uUcy+Zs1g8Lm5oZ8eGOqmpnjFj/ahdrk97BZUbwGUQzU0zspuxMPE9ycEuuvlTEqRTlgKt2MbbGzC
	DP82qYKwW1sraoqIdjxq+pXi4lwctM7lYUchlbFt1GtDqMRc7yMfHDe9N4Ccgz2/WtgqPDizuoUaP
	yYtoq6o9L7e/pNkFMpYovKd/C15XmZaC/K3TUZ4vTHZ+wXVIGdR4SqpaAXAF6kxczPuJsY0O3bbqs
	zmLUMJgZAF/wyuzcBtrGy7JnM2MBWsaYs87lGxnITO9ro9s1ILie1V5lR7MK+ODiGhoyn3/MzBV02
	CJjpamOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7Lh-0001R1-7t; Mon, 27 May 2019 04:35:01 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7LR-0001Gm-74
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 04:34:47 +0000
Received: by mail-lj1-x22c.google.com with SMTP id z1so7953523ljb.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 21:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VZ8laI7HfNFpetqz2A5IsSY+/12G/jqnCY3VpMxN5dg=;
 b=ed5+12VXZijtEvG0DKpPj8aIz9q/O6/snXNPgkPpJiF8Cu0zfvJRdhidsLmLvBsNBx
 9Q42hkMUfRqQjQcTB0W7giEW6Ib9zI2L6l6RJryP42Q80oaBEsCxdTUiW/XkUAljSuc5
 A32RpOs4gvN21p2YBccX9dlKGmAg2NLfOlFYiIHdcZ17AasGluYCExkutqxP6b/1Q+BU
 sBNaKNjdxTQDWDT/iHEkw8jJGBeDyaH/VWguF8jEo0c9A1lxTg5tYfCOgLOVsxCc3xjq
 QzGXyMbd+OovIAAa2ta+Ep4HDASUBwS7i5Mj4EzEX1arDZUP+XsOW4YS4xGVMHO+FuYb
 NIcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZ8laI7HfNFpetqz2A5IsSY+/12G/jqnCY3VpMxN5dg=;
 b=Dgqzm9Rl9b805A7PZEqw+nlktUw7VXpU5dAf3IReYchpxA4pXv27Z9eUy/JXU9csUH
 0gbSoeAPUvOAlB6Q8eY/rMVuKc/xFjWbofhL85HDxpRn7jtkcSbOZOmcs/kKhSMyBBcE
 VNL6h1M2mw7LqkQ6DNXHn6ugcUJYaAn06gLH1kNPbPArWyc1XmnSwW+oYfj5wf5OzrQL
 YMRE9YfwkMYk6BwNS7pxy7AIly3dbFCj2rGr4FD+68X1LrSaFJZlBgaWK7vbJCBjxzkY
 apJ9qQz16CH+8P4QeA22fQZdGFGFB4YEF4MATNeYbom6Z+8h27DdckowMNButDESrZ1o
 r8Dg==
X-Gm-Message-State: APjAAAVG7SUGdQtIHj6aSSEgK4SDNOpOyw7Apaxdmru1M/Cq98ZKacE2
 ZUIIoHGsiSVTy5s9DrIVd1240WlK
X-Google-Smtp-Source: APXvYqyq8WCeXeJK+D20N7Lljs03itDBsdSx3xAC9yfWD/BVwJQWkIO2toaBJDDEfw8ozBOpEwAosA==
X-Received: by 2002:a2e:818b:: with SMTP id e11mr59918975ljg.82.1558931682812; 
 Sun, 26 May 2019 21:34:42 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 k18sm2009431ljk.70.2019.05.26.21.34.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 21:34:42 -0700 (PDT)
Date: Mon, 27 May 2019 06:34:40 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190527063440.6855a6a1@samsung>
In-Reply-To: <1115da9e-d86c-e402-bca6-4bcdcfeb1e0e@birger-koblitz.de>
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
 <20190526192856.1290416d@samsung>
 <4c215f25-2110-2bbd-5557-a18138378133@birger-koblitz.de>
 <20190526224611.222e58d7@samsung>
 <1115da9e-d86c-e402-bca6-4bcdcfeb1e0e@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_213445_332170_734327E9 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RG5pYSAyMDE5LTA1LTI2LCBvIGdvZHouIDIzOjA1OjM1CkJpcmdlciBLb2JsaXR6IDxtYWlsQGJp
cmdlci1rb2JsaXR6LmRlPiBuYXBpc2HFgihhKToKCj4gPiByb290QE9wZW5XcnQ6fiMgc3djb25m
aWcgZGV2IHN3aXRjaDAgc2hvdyB8IGdyZXAgcG9ydAo+ID4gCWxpbms6IHBvcnQ6MCBsaW5rOmRv
d24KPiA+IAlsaW5rOiBwb3J0OjEgbGluazpkb3duCj4gPiAJbGluazogcG9ydDoyIGxpbms6ZG93
bgo+ID4gCWxpbms6IHBvcnQ6MyBsaW5rOmRvd24KPiA+IAlsaW5rOiBwb3J0OjQgbGluazpkb3du
Cj4gPiAJbGluazogcG9ydDo1IGxpbms6dXAgc3BlZWQ6MTAwMGJhc2VUIGZ1bGwtZHVwbGV4IAo+
ID4gCWxpbms6IHBvcnQ6NiBsaW5rOnVwIHNwZWVkOjEwMDBiYXNlVCBmdWxsLWR1cGxleCAKPiA+
IAlsaW5rOiBwb3J0OjcgbGluazpkb3duCj4gPiByb290QE9wZW5XcnQ6fiMgY2F0IC9zeXMvY2xh
c3MvbGVkcy9ldy03NDc4YWNcOmdyZWVuXDpsYW4vdHJpZ2dlciAKPiA+IG5vbmUgW3N3aXRjaDBd
IHRpbWVyIGRlZmF1bHQtb24gbmV0ZGV2IHBoeTByeCBwaHkwdHggcGh5MGFzc29jIHBoeTByYWRp
byBwaHkwdHB0IHBoeTFyeCBwaHkxdHggcGh5MWFzc29jIHBoeTFyYWRpbyAKPiA+IHJvb3RAT3Bl
bldydDp+IyBjYXQgL3N5cy9jbGFzcy9sZWRzL2V3LTc0NzhhY1w6Z3JlZW5cOmxhbi9wb3J0X21h
c2sgCj4gPiAweDIwCj4gPiByb290QE9wZW5XcnQ6fiMgICAKPiAKPiBJIGdldDoKPiAKPiByb290
QE9wZW5XcnQ6fiMgbHMgL3N5cy9jbGFzcy9sZWRzL2V3LTc0NzZycGNcOmdyZWVuXDpsYW4vCj4g
YnJpZ2h0bmVzc8KgwqDCoMKgwqAgZGV2aWNlwqDCoMKgwqDCoMKgwqDCoMKgIGRldmljZV9uYW1l
wqDCoMKgwqAgaW50ZXJ2YWzCoMKgwqDCoMKgwqDCoAo+IGxpbmvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG1heF9icmlnaHRuZXNzwqAgcnjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdWJzeXN0
ZW3CoMKgwqDCoMKgwqAKPiB0cmlnZ2VywqDCoMKgwqDCoMKgwqDCoCB0eMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHVldmVudAo+IAo+IG5vIHBvcnRfbWFzawoKU2V0IHRyaWdnZXIgdG8gc3dp
dGNoMCBmaXJzdC4KCi0tIApQb3pkcmF3aWFtLAogQ2V6YXJ5IEphY2tpZXdpY3oKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
