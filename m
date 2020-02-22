Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD35169213
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 23:31:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzAuT+x4lUtCrK6WTwinFVtQT1tpx/bNiIWKLR+hjwI=; b=n1yjpsTIAMWrok
	Lu6rkADrKwhOZZKBHfaipP9Iw9mX8C+tcimjMF3HpwCJ7RLCRxet+qdPVrJUIsZUMBaSRzCfhBabc
	QcO8Ncl4CIJsVfaI/NCcDMhe3cet+f1OAfU+IeFSOSe9WERoQR0C4gVv/EAy8OHg8yJ05pX5DTbZO
	r/cPVp5q7DwSXbo2ryX3coqpN2w7bGUluVoFdljPD5GFhBdN6VfU/Qi7WTZACZqA0iYG6VsF5EtJR
	IjPWlu7MhdIJvq/cT2fzIRCyU+/dxsZE+4wY/WzpebQeyBcSK5oKkr4x3xEjfDYtCWGYXjiSHfHCq
	LVy7DVVkXIT1zWiClRGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dJ4-0001XL-Vc; Sat, 22 Feb 2020 22:31:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dIr-0001VR-4H; Sat, 22 Feb 2020 22:31:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id 84so3248644pfy.6;
 Sat, 22 Feb 2020 14:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=uy+OLMQcAeK6L9zy3NzMmFbbEfVsxtQWMg0kqpi9cCg=;
 b=EmVjLQP8nR+VOhoidmwDtsYLcsyI6erggOxlP8vYsDaCA92/BgnnW6MMkY2WmN7j98
 g2Au+0CqOsaTDOTB3ZSQQlXMyXUMif4Kpxe830heMZYbcbkN4HvG68GQQJ2MS20gfrH2
 XDhyIAuHu9Vkf9D7FI+EGfSLexIYWPP3MpdTDXkm53Aq8QVvq/ZVS3H4oSrSbDHHprhH
 pEzotMX2GC0oMJxw0EZxSFvDFBU6pW5MVXvn7C9lsPdf3NZrVzvQaa76vy+U6Z509DDK
 yzj/Kr2Wu6NJm3PehvfFkUb7LEsPDLLCZNdFrUsH+bbkYQOdppX1AtdMzF3OhOM2w7u5
 pDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=uy+OLMQcAeK6L9zy3NzMmFbbEfVsxtQWMg0kqpi9cCg=;
 b=tHBTcoDMHdf+JBSgT7CCg2M2bnJCj0+Q7+uitv+8P9Zy1i2ytHochZDeaeXNIJZpRH
 xDhPBGXosVReCEu9GBYSVwXS5Z5YqGyA9uMdnMm6OjFxFq4kJ2GQfVlwJs7LfafiulZ0
 17TVfu/1ee4LTr/CM8Q3iQp3i/C/KOa+Sa6w1Dto4V9FML9dxXRi6R3UZTGxe1g5JYoP
 Tj2iuD0tlerVZFVdSfVfqmsYpY3cO50bwLpZRsXDxpr3vkaO+i/bWZNKNCVjdiBUubif
 IrAZc9R3AdxVvHk1THn4f9ECMhsU0Tf8jreJmzQmyy2Hs3vdeqm3GVmxQ7JPQpar2VlH
 8E+Q==
X-Gm-Message-State: APjAAAW3nlWq/LfDmM+DA5qUE7FFF7PWFM6YXUDNW09o1xSTa7SoKxJ4
 IZjWqdrp3f8zGKhBJudQJawDoaavdrY=
X-Google-Smtp-Source: APXvYqxqqB/tIm1awIN2xY+o+65RQGAzxBy1kEeemFN9bUiHfe/Eurz123JLzoaogU+0TbpCSapK+w==
X-Received: by 2002:a63:6d01:: with SMTP id i1mr44451289pgc.55.1582410676269; 
 Sat, 22 Feb 2020 14:31:16 -0800 (PST)
Received: from [192.168.0.147] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id m128sm7439429pfm.183.2020.02.22.14.31.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 14:31:15 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 22 Feb 2020 14:31:14 -0800
Message-Id: <EF50BAB8-683F-4BA7-9EB3-3ACA82711014@gmail.com>
References: <20200222133113.GE99033@meh.true.cz>
In-Reply-To: <20200222133113.GE99033@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_143117_172888_171D66FF 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiAyMiwgMjAyMCwgYXQgNTozMSBBTSwgUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gCj4g77u/Um9zZW4gUGVuZXYgPHJv
c2VucEBnbWFpbC5jb20+IFsyMDIwLTAyLTIxIDE0OjU1OjU1XToKPiAKPiBIaSwKPiAKPj4gSSB3
b3VsZCBsaWtlIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTIyMTY5Ny8gdG8g
YmUgYXBwbGllZC4KPj4gSXQgbWFrZXMgbm8gc2Vuc2UgdG8gaGF2ZSBicm9rZW4gZnVuY3Rpb25h
bGl0eSBpbiB0aGUgdHJlZS4KPiAKPiB0aGFuayB5b3UgZm9yIHRha2luZyBjYXJlLCBidXQgSSdt
IG5vdCBnb2luZyB0byBtZXJnZSB0aGlzIGludG8gMTkuMDcuCj4gCj4gSXQgbG9va3MgbGlrZSBp
dCBkb2Vzbid0IGZpeCBhbnl0aGluZywgImp1c3QiIGEgYnVpbGQgZmFpbHVyZSBvZiBmZm1wZWcg
Ynkgbm90Cj4gYnVpbGRpbmcgaXQuIGZmbXBlZyB3b24ndCBidWlsZCBldmVuIGFmdGVyIHRoaXMg
Y2hhbmdlLCBzbyBJIGRvbid0IHNlZSBhIHBvaW50Cj4gb2YgdGhpcyBjaGFuZ2UgaW4gdGhlIHN0
YWJsZSByZWxlYXNlLCBpbiBzZW5zaXRpdmUgdG9vbGNoYWluIGFyZWEsIHdoaWNoIG1pZ2h0Cj4g
cG90ZW50aWFseSBpbnRyb2R1Y2Ugc29tZSByZWdyZXNzaW9uIGluIG90aGVyIHBhcnRzLgpUaGF0
4oCZcyB0b3RhbGx5IGJvZ3VzLiBmZm1wZWcgaXMgdGhlIG9ubHkgdXNlciBvZiBOQVNNLiBOb25l
IG9mIHRoZSBvYmplY3QgZmlsZXMgYnVpbHQgYnkgTkFTTSBmb3IgdGhlc2UgcGxhdGZvcm1zIGFy
ZSB2YWxpZC4KCk5vdGUgdGhhdCBJ4oCZdmUgYWxyZWFkeSB3b3JrZWQgYXJvdW5kIHRoaXMgaW4g
dGhlIHBhY2thZ2VzIGZlZWQgYnkgcGFzc2luZyDigJRkaXNhYmxlLXg4NmFzbSB0byBmZm1wZWcg
Zm9yIHRoZXNlIHBsYXRmb3Jtcy4KCkFsc28gbm90ZSB0aGF0IEFTTSBvcHRpbWl6YXRpb25zIGhl
bHAgd2l0aCB0aGUgUENFbmdpbmVzIEFQVXMsIHdoaWNoIGFyZSBxdWl0ZSBwb3B1bGFyIGhlcmUu
Cj4gCj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
