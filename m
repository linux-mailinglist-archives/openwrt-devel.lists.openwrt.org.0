Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD08D5E52
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 11:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:To:References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cau98IBqpip1hR1mYZPOltiW4ugiAc4zus+x0uwUH0g=; b=MjmP0w63TFIg1fra4N3yo5MIO
	7VB4GemztCIvnoOhsAtqLCachcEXxt4vmo1SidiiQvBbQOw/6/ZHA0DGOSHpZ5AiRuoxZPTVraDOo
	0I8HipeqyyRwZTnGP33kxcKvsCK5YzTI74FacVuH3A6d+LbwEQexfy6L0DkSeff7sRmH40CE46TRX
	opf86WFtSMAWQrWqfTz/QSQF5V/cD7SzZ/KcGD6v0i9rrRtAsUoNOf5UcyUG1Grri0/dyXFHE/lUf
	Ve/WsPEoMhvx6yZBAkwOl5soLqnRysYrb1Z07CwklBLEUuHxsUCx6Yuvu+l1mrZM9v92ciSTI0csK
	onfCLVQqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwNX-0005dx-55; Mon, 14 Oct 2019 09:10:59 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwNS-0005dW-4t
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 09:10:55 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5so16411152wmg.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 14 Oct 2019 02:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:to:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=+SiAcAwoSLqZSzfo/2NEgwpsq8cPVLj5nedcbp+lBb8=;
 b=IlWv8V41cbhhPeG87dVctTIDdc2LIf3I9pNRsigc4hEefCgipQp0NQczwKQ39GfD+O
 /lM2KiJddm21XqvnFA1N8D6ZMQlQnJizPHmZk/dI93p1ja9CSpC5Y8wJ9QZ9UqlMyZCn
 YjNub7ogjZKoWRxmK+Xcpjqpui6ajwObS6u+f/ytqIun9JqI2P7bjJziBTQEvmZEo/qc
 02Dxz+c2RimEpGAPAm+qNns8LYfJl10EJLkuVut9vqrVN6mkND4ls9uis8CRxAdj7Nr5
 dh2CkWZbmTiU63jtDZfeQXXG1JbltnIvHAYnpJetTyk6Q0CKXZcp/qyTk0NGXSdCFtto
 gOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:to:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=+SiAcAwoSLqZSzfo/2NEgwpsq8cPVLj5nedcbp+lBb8=;
 b=Tm+sVHlYpsC+zNCXJNm5Lenf5FxLLDa3/Fe1uYlrOOd0eqABrgYkUAfZMo/IT4EnZJ
 3WjUEbHV8z3IRWPEMd8dkX2Y4n1S0vCQj+8BOcyL/orTqH8GZVIv/bDOdbGaTeEjLdQx
 gwsHeMsbFlNp6s7gNWWbghU87ihLVW4945g9US1Jm7x2VOahRlsGyZw2PkkZ4QSzwXPo
 zKIkpWgfPXKbmUzHvtxFIvZ6Dif6BWNRm16UiT3rfe2zJtLUFUqFIDEcOO8rt9GYVbTB
 RoV0ITd7kLps3+DSKaBC3Mur6xoU88wR8R8mb0K5d6waotfluYyIpb4VOn1wEtyLFR0v
 tpZw==
X-Gm-Message-State: APjAAAXMsF2+r7Zbvm4fnYp111SABsgTeVxB3ht0bTfTdJN9BBrx+wTW
 jzRnbFYVfGpXTdP6yX/7Am6FpGcyjK0=
X-Google-Smtp-Source: APXvYqzCez9fw/AdViGV/jHTe6x7b6WSM7WzPlYeaT79vKalbVOe0fh6FUdBd8AIlfF09xQF1bTYPg==
X-Received: by 2002:a1c:6709:: with SMTP id b9mr14791683wmc.14.1571044251676; 
 Mon, 14 Oct 2019 02:10:51 -0700 (PDT)
Received: from [192.168.43.216] ([151.36.35.142])
 by smtp.gmail.com with ESMTPSA id 90sm26202250wrr.1.2019.10.14.02.10.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 02:10:51 -0700 (PDT)
References: <1a036c8b-e6e1-3607-33a2-949959e4ea85@gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
X-Forwarded-Message-Id: <1a036c8b-e6e1-3607-33a2-949959e4ea85@gmail.com>
Message-ID: <3c737b41-b26e-f387-683f-ee378062686b@gmail.com>
Date: Mon, 14 Oct 2019 11:11:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1a036c8b-e6e1-3607-33a2-949959e4ea85@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_021054_191517_34FEB43E 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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

Ck9uIDExLzEwLzE5IDEyOjU5LCBKby1QaGlsaXBwIFdpY2ggd3JvdGU6Cj4gSGkgQmrDuHJuLAo+
Cj4+IE9yOiBTdGFydCBkaXNjdXNzaW5nIHRoZSByZWxlYXNlIGJsb2NrZXJzIGhlcmUgYW5kIG5v
dy4gVGhhbmtzLgo+IDEpIEJsb2NrZXI6IEx1Q0kgbWFzdGVyIG5lZWRzIHRvIGJlIGJhY2twb3J0
ZWQgdG8gMTkuMDcKPiBUaW1lIGVzdGltYXRlOiAyLTMgd2Vla3MKPgo+IDIpIEJsb2NrZXI6IEFs
bCByZWxldmFudCBzdWItY29tcG9uZW50cyBmb3IgV1BBLTMgKyBHVUkgc3VwcG9ydCwgc3VjaCBh
cwo+IGhvc3RhcGQsIGl3aW5mbyBldGMuIG5lZWQgdG8gYmUgYmFja3BvcnRlZCB0byAxOS4wNwo+
IFRpbWUgZXN0aW1hdGU6IDIgd2Vla3MKPgo+IDMpIEJsb2NrZXI6IFNvbWUgd2Vha25lc3NlcyBp
biBsaWJ1c3RyZWFtLXNzbCBjbGllbnQgY2VydGlmaWNhdGUKPiBoYW5kbGluZyBuZWVkIHRvIGJl
IGFkZHJlc3NlZCwgd2hpY2ggY2FuIG9ubHkgYmUgc29sdmVkIGJ5IGFuIEFQSQo+IHJlZGVzaWdu
LiBCYW5kLWFpZCBmaXhlcyBhdmFpbGFibGUgYnV0IG5vdCBtZXJnZWQsIG5vYm9keSB3b3JrZWQK
PiBvbiBBUEkgcmVkZXNpZ24geWV0Cj4gVGltZSBlc3RpbWF0ZTogMSB3ZWVrCj4KPiA0KSBCbG9j
a2VyOiBOZWVkIHRvIGFzc2VydCB0aGUgc3RhdGUgb2YgdGhlIERyYWdvbmJsb29kIFdQQTMKPiB2
dWxuZXJhYmlsaXRpZXMgaW4gMTkuMDcncyBob3N0YXBkCj4gVGltZSBlc3RpbWF0ZTogYSBmZXcg
ZGF5cyBJIGd1ZXNzCj4KPiB+IEpvCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpJcyBXUEEzIHN1cHBvcnQgc28gY3JpdGljYWwgZm9y
IDE5LjA3PwoKSSdtIG5vdCBhd2FyZSBvZiBtYW55IGNsaWVudCBkZXZpY2VzIHRoYXQgYWN0dWFs
bHkgbmVlZCB0aGF0IChpLmUuIApjYW5ub3QgdXNlIFdQQTIpLgoKSW1obyBpZiBpdCdzIG5vdCBy
ZWFkeSBmb3IgYSBzdGFibGUgYXMtaXMsIGp1c3QgcG9zdHBvbmUgaXQgYW5kIHRlbGwgCnBlb3Bs
ZSB0aGF0IG5lZWQgYmxlZWRpbmcgZWRnZSB0byB1c2UgTWFzdGVyL3NuYXBzaG90CgotQWxiZXJ0
bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
