Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C1D12CAED
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 21:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JcTdw5LQOYdIXlRKIG+Fe6rHtHHES+RvH9KLfxV6BnQ=; b=lsEYcRPeSnPsl0JHhhsGKFs4d
	wdKgSAOkGsDM2grZ+AexOlVX6OkdcshyVa/A31kTSrA0A5u+J14UzTX90HT9YOgiyjaBtwnM1qg1I
	Hi8mP4tIR+th8mB08uDsGK7rCRkqS37epiBqyVGbcWWncg9rhvAdkhvzLg3bEHrUzfeUNPtGaYiSX
	equdZ+R2Zaw/f8UnRuH819hqkFJejzT2moDBYa1wts24OuxpdN0WDo7gvWiwiTvgBEmEccI68L2FX
	VQCfcK3UBIW6LEWbYG3EXjATSOnu5VGA7IxQ3psQcpmfgV1f6DgYxKWyH9Ca23aQEycg4WT4R0LbG
	hTuT+71og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfVx-0003ut-JK; Sun, 29 Dec 2019 20:50:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfVh-0003dH-67
 for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 20:50:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so31043852wro.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Dec 2019 12:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=JYboF0xQmXnZvTgxgDtkzL6565tDa+OcfIvTdAnze/E=;
 b=n/iM9F/hKITWwXpAihR0psTrxuCFhEMuZeq0pBX8n+hxcleBmDU6v9IurMdXl/wZPu
 x1p2UbCqw9Pj7GV3HNb10iSexrhWaiRwGpAPbAtKaEUTaMPQ/R59tJldA+0yKLM55ODR
 lTVh8uYB4Zi/kL9imAlbiXLHTew4tTkLxluhTf8KJuPaCYCIKJZ97+fOfGPLNTZP0fEb
 ac2rRPA6Gkl8sYvkPs/gQwgzAj/rmvkj7b+ypJU2yZ/bIhMgQqdq3W5fxpwnxDl7Y112
 8HHaB1ZzbyNFMoN5akpqvqXNEllr7/jNYKSG4H3Mq55V8pRpA8ir1KszgHenfMFuEnRP
 B5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JYboF0xQmXnZvTgxgDtkzL6565tDa+OcfIvTdAnze/E=;
 b=bKlu6wAVNvuQz7Zec2LZYP4dN/w9HfV7LY5A+uXO/mWmHqkI3nFtZoPOEu8gk91yaF
 MU2dfNDgxISybWoZYhXbKnQZEw3RLE75tmti8ksTTTPAp93g7/RsgjkGcmtP3IDiezgb
 Keq4gVQIF/7p6lv8whBnE0sprv+ZVEOoU+INZTK3AeJAtWkjYLOcU++iNcbKuAbUYAdt
 8g08tfYB+H4QNEJ4WD8cUNqzTcVWkbe4VED7rUwuJTQ+PrTu/mQto2woKuKmHZUFuwG8
 v2ruVKYcPAOjQr+OlKCsDr/dGWJ/XmxNXw3sezrtHexW7LX1x46jF1alnEt8g/AU7hWn
 M6gQ==
X-Gm-Message-State: APjAAAVfZGYA7oYRw5GJPPHj4ZLefa2MwTPKU1SgIKfYFYFcbxX2hrSX
 p+4j1s7y5FIJC2YNSoZvuW5Yqre7jr5OUQ==
X-Google-Smtp-Source: APXvYqwU+s0+TnZxw4T8rlM6jx1g48oJNrLyAFefe73SZ33it46BJWqer1Tb09VSFQdCqZalIptQFw==
X-Received: by 2002:adf:e3c1:: with SMTP id k1mr60952503wrm.151.1577652597652; 
 Sun, 29 Dec 2019 12:49:57 -0800 (PST)
Received: from [192.168.1.230] ([213.152.162.94])
 by smtp.gmail.com with ESMTPSA id x14sm18067772wmj.42.2019.12.29.12.49.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Dec 2019 12:49:57 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <CACna6rz=BYYPVzFPdPU6qtr5+i56qA1POYUrbTCKsS1r0a8jrw@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <a45b59bc-6cd7-d1f2-9c30-abdd67322970@gmail.com>
Date: Sun, 29 Dec 2019 21:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CACna6rz=BYYPVzFPdPU6qtr5+i56qA1POYUrbTCKsS1r0a8jrw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_125001_262519_A68732BC 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Problem with blockd starting after partitions
 mounting
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpPbiAyOS8xMi8xOSAxNTozNSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEEgeWVhciBhZ28g
SSBpbnRyb2R1Y2VkIGhvdHBsdWcuZCBzY3JpcHQgbWVhbnQgdG8gbWFuYWdlIFNhbWJhIHNoYXJl
cwo+IGluIGEgY2xldmVyIHdheSBieToKPiAxKSBVc2luZyAibW91bnQiIGhvdHBsdWcuZCBldmVu
dAo+IDIpIEdldHRpbmcgbW91bnQgaW5mbyBmcm9tIGJsb2NrZAo+IAo+IFJlbGV2YW50IGNvbW1p
dCBlZjFlZmE3NTZlMGQgKCJzYW1iYTM2OiBhZGQgcGFja2FnZSB3aXRoIGhvdHBsdWcuZAo+IHNj
cmlwdCBmb3IgYXV0byBzaGFyaW5nIik6Cj4gaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3Bl
bndydC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7aD1lZjFlZmE3NTZlMGQwY2FlZjQxMjE2NzE5
ZGNjNzJjNzFiMzFkOGZmCj4gCj4gVG9kYXkgSSByZWFsaXplZCBpdCBkb2Vzbid0IHdvcmsgZm9y
IHBhcnRpdGlvbnMgbW91bnRlZCBhdCBib290IHRpbWUKPiBhcyBibG9ja2QgaXNuJ3QgcnVubmlu
ZyB0aGVuIGFuZCAidWJ1cyBjYWxsIGJsb2NrIGluZm8iIHNpbXBseSBmYWlscy4KPiAKPiAibW91
bnQiIGhvdHBsdWcuZCBldmVudHMgYXQgYm9vdCB0aW1lIGFyZSBnZW5lcmF0ZWQgYnk6Cj4gMSkg
L2V0Yy9ob3RwbHVnLmQvYmxvY2svMTAtbW91bnQgY2FsbGluZyAvc2Jpbi9ibG9jayBob3RwbHVn
Cj4gMikgL3NiaW4vYmxvY2sgaG90cGx1ZyBjYWxsaW5nIC9zYmluL2hvdHBsdWctY2FsbCBtb3Vu
dAo+IAo+IFNvIGl0J3Mgbm90IGEgbWF0dGVyIG9mIGluaXQuZCBvcmRlciBhbmQgYWRqdXN0aW5n
IFNUQVJUIGluCj4gL2V0Yy9pbml0LmQvYmxvY2tkIChibG9jayBkZXZpY2VzIGFwcGVhciBFQVJM
WSkuCj4gCj4gQW55IGlkZWEgaG93IHRvIHNvbHZlIHRoaXMgcHJvYmxlbT8gU2hvdWxkIHdlIG1h
eWJlIHBvc3Rwb25lICJtb3VudCIKPiBldmVudHM/IEUuZy4gdW50aWwgImJsb2NrZCIgc3RhcnQ/
IE9yIHNob3VsZCBob3RwbHVnLmQgc2NyaXB0IHNvbWVob3cKPiB3YWl0IHVudGlsICJibG9ja2Qi
IHN0YXJ0cz8KPiAKCkVpdGhlciB0aGF0IG9yIHBhcnNpbmcgdGhlIG91dHB1dCBvZiAiYmxvY2sg
aW5mbyIKVGhlIGxhdHRlciBwcm92aWRlcyBtb3VudCBpbmZvIChhbW9uZyBvdGhlcnMpIGFuZCBk
b2VzIG5vdCBuZWVkIGJsb2NrZC4KCkJ1dCBpdCdzIG5vdCBqc29uIHNvIHlvdSB3aWxsIGhhdmUg
dG8gcGFyc2UgaXQgZGlmZmVyZW50bHksIG9yIGFkZCB0aGUgCmFiaWxpdHkgdG8gcHJvZHVjZSBq
c29uIHRvIGJsb2NrLgoKLUFsYmVydG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
