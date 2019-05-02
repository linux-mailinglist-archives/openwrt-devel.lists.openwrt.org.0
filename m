Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4898312141
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 19:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXQeNPkupNlbGl93NFzIDNxMBKjDd9L8xfQuUtRg+HY=; b=G6GC8wze56C3+W
	4rgrqnRc6zvEx39I1GootuXkWSqskeDuF+K/xQ1YsKaeX5sSEwV9YkLH1Ula5gag1grhGiY63a5iS
	DhXI/acnEfk1ygQ+rm2deAcXNyE+2VGiKZnaJ/ekGnOytFLOWGpACrxdp5BrwkDCM/qOq9PQX5X3o
	NzlasWxiyIlp0rTgM3LWF5b2bukrI2HsVNp3KzDueN/Bwh+zxsoaUAT0lVhqyG8wd5wnedtRpHZoz
	/q7Wt6ti8Ru0piLQ+3d5sOm71TFtGVBGP0XxyTvFWlqUip08rOmQeHLUrRBg3Bykb83mdq0uUfPu9
	48R88fRW385eZLci01bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFpJ-0007A6-Dg; Thu, 02 May 2019 17:48:57 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFpD-00079j-BC
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 17:48:52 +0000
Received: by mail-qk1-x743.google.com with SMTP id a132so1974393qkb.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 10:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IuaPvf+MomZPlyMg9u7kUqSzwkziGaGaMTxoCnbjq/Y=;
 b=ncUdPjPjJLtIdbezIO89LxZkjtkpagPxt6N6Zp3lcowuiCmOSH5omH71bC8n8q9BZR
 Js6JtldEtXGmTPAHMCQEniYbUFDoDDWocTTsMfxes2jBuin0Hh5UQsDLDhmi+KmY6nbM
 fc/e8yuSZ9qRsOM3b7HN4aMhgCFzRP/Pk4Kc41his4mODpPtlvudrLgZjKEdqsAbvcwl
 Uw2Ctp4kO6vR33KmnxB1JxOo2B2Qc/bC7XKFxTQc6noWy/Db8hcSiVJJZFcZiK8yPICg
 hI0UUfvM2UEZsaarME5d7lj3xUecQd8POgJGpKhyOlxz/m+hcVE3wbWgzQbxh3EpfVLi
 EBxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IuaPvf+MomZPlyMg9u7kUqSzwkziGaGaMTxoCnbjq/Y=;
 b=CwITkgT9H1yNwrhjR70/KKvimyGySbF45At0QVLOEtOnhroCE0hDULsItYrn2v9Z1a
 BU5PUSUlvSqUpc1MekcPdZGEY9tn6HVDuqS5uN6cRhrGeW9qWpMYC2+g2qdwEVKoeE8U
 J0GsCFqAMYW3MAD/g+k6nZW4fN2ThbSXkYvoRl7HaD4sSnORe6Yl8ZLd0pdvdb9jiaQn
 L9Esg7RPBNZluW8RH5fLlNgsJCuD1UQJ1MidvNiC6gH0pjpA+YH0eDy61nHVUwYSWnDq
 hJqHHKUz9wB6Z2/9HNzubcwcmn7xZsBHCIaGCmQx4j2AJTND6L7K4Ul7r6MYkkRrIpGa
 l0mA==
X-Gm-Message-State: APjAAAWxXMTYdnDuaQQH0QISWKT+g2Uc0pAWcF/LxpOImHIyg9u0BWwo
 nQNfsHhxirvnNyG1JVww19c=
X-Google-Smtp-Source: APXvYqyVW3viW8ZYIj9EOG9gOemg9geqc0S3TrGNDMUlTIRYSYOzb+H4/eh6SSyvMJI/opj78jbhuA==
X-Received: by 2002:a37:64ca:: with SMTP id y193mr3975959qkb.72.1556819329064; 
 Thu, 02 May 2019 10:48:49 -0700 (PDT)
Received: from [10.18.72.102] ([12.219.245.220])
 by smtp.gmail.com with ESMTPSA id s55sm25711023qte.17.2019.05.02.10.48.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 10:48:48 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Boris Krasnovskiy <borkra@gmail.com>
X-Mailer: iPhone Mail (16E227)
In-Reply-To: <CACRpkdYjcXVymuZDmTjf9vvQnfpUX8d5Cx032MeFf+r8kxOzRg@mail.gmail.com>
Date: Thu, 2 May 2019 13:48:46 -0400
Message-Id: <A44ADDB0-3ED9-4F2D-893C-0D9352A9C86E@gmail.com>
References: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
 <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
 <CACRpkdYjcXVymuZDmTjf9vvQnfpUX8d5Cx032MeFf+r8kxOzRg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_104851_386125_7C5CC35A 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (borkra[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Commit 8dcc1087602e breaks FA526 (Gemini)
 compile
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgTGludXMsCgpZb3UgaGF2ZSB0byBkbyDigJxtYWtlIGRpcmNsZWFu4oCdLgoKVGhhbmsgeW91
LApCb3JpcyBLcmFzbm92c2tpeQoKPiBPbiBNYXkgMiwgMjAxOSwgYXQgMTE6MjggQU0sIExpbnVz
IFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4gd3JvdGU6Cj4gCj4+IE9uIFRodSwg
TWF5IDIsIDIwMTkgYXQgMTI6MzAgQU0gQm9yaXMgS3Jhc25vdnNraXkgPGJvcmtyYUBnbWFpbC5j
b20+IHdyb3RlOgo+PiAKPj4gQ3Jhc2ggZHVyaW5nIGluaXQgdGhhdCB5b3UgY2FuIHNlZSwgaXMg
cHJldHR5IGZhciBhbG9uZyBpbiB0aGUgYm9vdCBwcm9jZXNzLCBzbyB0b29sY2hhaW4gbGlrZWx5
IGNvcnJlY3QuCj4gCj4gSSBmb3VuZCB0aGUgcHJvYmxlbSwgYWN0dWFsbHkgdGhlIHRvb2xjaGFp
biB3YXMgaW5jb3JyZWN0LCBidXQgdGhhdCB3YXMKPiBhIHNpZGVmZmVjdCBvZiB0aGUgYnVpbGQg
c3lzdGVtLiBBZnRlciBhcHBseWluZwo+IHRoaXMgcGF0Y2ggYSBtZXJlIG1ha2UgbWVudWNvbmZp
ZyAmJiBtYWtlIGNsZWFuICYmIG1ha2Ugd2lsbCBub3QKPiBkbyBpdCwgeW91IGhhdmUgdG8gcm0g
LXJmIGJ1aWxkX2Rpci4KPiAKPiBBZnRlciBJIGRpZCB0aGlzIGFuZCByZWJ1aWx0IHRoZSB3aG9s
ZSB1bml2ZXJzZSBvdmVybmlnaHQgaXQgd29ya3MKPiBhZ2Fpbiwgc28gSSBhbSBoYXBweSBub3ch
IDpECj4gCj4gVGhhbmtzIGZvciB5b3VyIGhlbHAgYW55d2F5IQo+IAo+IFlvdXJzLAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
