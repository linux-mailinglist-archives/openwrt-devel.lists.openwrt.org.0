Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CA3EAD5A
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 11:23:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B+Q2aohTPZHMMcTmEyioI37O+MSQ179veuAaFQ9oZdY=; b=USk4krCj+rVTCwnOFkMuh3BS9
	jBhcMAYm7QVqE0p6a+XXAsbPV2B6dRudaC9uRbYKgwzrbJd7qnXEYspdveXhfA/lg9vHvTXWfxHX/
	tOmpl3bCKPcd4uD9902JTPx+uox5ibleLEmC8TpL29kHkKYBM7WMafE62d32iOKHTzFnQTw7NrWW8
	D91GBiBZ0MKjK9fdSUWaUwT04eK2GcSs404XCQoFW7oxz8UrnIBX0EHmMB9o4DV3otIJ8IV1CEKow
	7kx/gyiTA9zmNWbrH8gOWzbgUrmYg+If4P8POq6+BfMSkxzsy5Z+GABOKs4HXFfxpshVfGTD9jVnB
	1ON8b9J2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7cK-0000xZ-5o; Thu, 31 Oct 2019 10:23:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7c8-0000x2-Vo
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 10:23:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id w18so5615019wrt.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 03:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=tCNUZevnhvqeLEHlR9m7iDxqNaS2zILa4YG+iRuchcM=;
 b=yX7vQvQAA5oOqRrgdikitm/YFUcBX3sru/LKCZ368biStz4dH5wXrg4rUHc/2+BJOH
 QkiS++io5z0hepUS213CsDGK/e6mr4SUT1THyV1iNKa7+dagvXFjY8MjhK0iY1TVP1FX
 XMlO/z7xYG2xE4ACJxm/mx9zrEbaAR4wBcW4IhJiidz4jHCXSJmkHVfYwgSqhouOVwf7
 HGzRTY9jme0hBfLJ7kVqNVZXxfq/CaQj2+FUj+nPraOhULJUiyjkJq3OtPwCLNBtcCtZ
 kstPJ3Z4veMsVqMkIaH7zJQnA6QxMS2eLgHJMgJ4moHSpmQ2DY1vKmQA7pFgNaztjXI8
 XVRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tCNUZevnhvqeLEHlR9m7iDxqNaS2zILa4YG+iRuchcM=;
 b=Jzme9ZScaseC2/eWSpGOI7CJrtSPw+sKBYkgOU5llgFuka18ZCcse/5hhh2kODo2ry
 zh+ggCpnOX241vc5E4OZBWhIabW2WABYACU2wDaxgFIyIkLwVQ7f/gsMIL5hY2hnJOYr
 9LDSKm2OzG1VGlyTl1CZeUI+170ZyyQW/+szonzNk1yxWbActYvB/+feCnJarjCGiQng
 bLACajhWlEoHeDbUz7hiZPrlE3I1Hw+8kcmHcu/kaWUGqXEZ76nv706UsluoI4SlTzt+
 oXjHhsT7Mj09ZNBmyIbS2sgq79g3Tty4h9MavOUdHGm8QKgrjLIOEJQq3rnYfcEatDz2
 lLAw==
X-Gm-Message-State: APjAAAWW/RxfAIUWvwEt8A3ZNWjocf04WDCaVpPZlTxTv1f/9fgiyQLX
 l05W/1TjHTxL0SPtPfQHu6fnjRvkdsQ=
X-Google-Smtp-Source: APXvYqzAUKt9aJuNoSlZHX0Si3tQ8nK4QhcJOdB+hL3aHFA4dN9PglyBPexrR+/1etwkqi/lGARTNQ==
X-Received: by 2002:a5d:4705:: with SMTP id y5mr4772124wrq.364.1572517413565; 
 Thu, 31 Oct 2019 03:23:33 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id j15sm2057373wrt.78.2019.10.31.03.23.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 03:23:33 -0700 (PDT)
To: John Crispin <john@phrozen.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <79530b5d-8c1b-0d40-b2cb-c6e39c1f0dd1@ncentric.com>
Date: Thu, 31 Oct 2019 11:23:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_032337_047508_2968CD43 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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

Ck9uIDI5LjEwLjE5IDA2OjM3LCBKb2huIENyaXNwaW4gd3JvdGU6Cj4gSGksCj4gc2hvdWxkIHdl
IHVzZSB2NS40IGFzIG91ciBuZXh0IGtlcm5lbCA/Cj4gwqDCoMKgwqBKb2huCj4KPgogRnJvbSBt
eSBwb2ludCBvZiB2aWV3OiB5ZXMKSSBhbHNvIHJlYWxseSBsaWtlIHRoZSBjYWRlbmNlIG9mIGp1
c3QgZm9sbG93aW5nIExUUyByZWxlYXNlIHNjaGVkdWxlIAp3aGljaCBkb2Vzbid0IGVuZm9yY2Ug
YSBoYXJkIGRlYWRsaW5lIHRvIGRvIG1ham9yIGJ1bXBzIG9yIHJpc2tpbmcgCmRyeWluZyB1cCBv
ZiBmaXhlcyBmcm9tIFN0YWJsZQoKCkxvdHMgb2Ygc3R1ZmYgZ2V0cyBiYWNrcG9ydGVkIHdoZW4g
bmV3ZXIga2VybmVscyBhcnJpdmUsIHNvIG1heWJlIGF2b2lkIAp0aGF0IGVmZm9ydCBhbmQgaW52
ZXN0IGl0IGluIGp1c3QgYnVtcGluZyB0aGUgd2hvbGUgdGhpbmcKSSBvZnRlbiBoZWFyIGZyb20g
cGVvcGxlIGFyb3VuZCBtZSB0aGF0IE9wZW5XcnQgbG9va3MgbGlrZSBhICJnYXJiYWdlIApiaW4g
b2YgZmlsZXMiIGR1ZSB0byBhbGwgY3VzdG9tIHBhdGNoZXMKVGhpcyB3b3VsZCBiZSBvbmUgd2F5
IHRvIHJlZHVjZSB0aGUgYW1vdW50IC4uCgpTdGlsbCBhIGxvdCBvZiB0YXJnZXRzIGFyZSBvbiA0
LjE0LCB3ZSBtaWdodCBhcyB3ZWxsIGp1c3QgYnVtcCB0aGVuIHRvIAo1LjQgaXNvIG9mIGZpcnN0
IHRvIDQuMTkgdG8gZXZlbnR1YWxseSBnZXQgdG8gNS40CgpCeSB0aGUgdGltZSAxOS4wNyB3aWxs
IGJlIHJlbGVhc2VkLCA1LjQgd2lsbCBwcm9iYWJseSBiZSBvbiBvdXIgZG9vcnN0ZXAgCmFuZCBJ
IGRvbid0IHNlZSB1cyBtYWtlIGFub3RoZXIgbWFqb3IgcmVsZWFzZSB3aXRoaW4gMSAuLiAyIG1v
bnRocyBhZnRlciAKMTkuMDcKClVzaW5nIG1hYzgwMjExIGZyb20gYSBuZXdlciBrZXJuZWwgc2Vl
bXMgdG8gd29yayB3ZWxsLCBidXQganVkZ2luZyBieSAKdGhlIGFtb3VudCBvZiBjaGFuZ2VzIGlu
IEhhdWtlJ3MgdXBkYXRlcwpzZWVtcyB0byBpbmRpY2F0ZSBpdCdzIGEgbG90IG1vcmUgd29yayBp
ZiB0aGUgZ2FwIGJldHdlZW4ga2VybmVsIGFuZCAKbWFjODAyMTEgdmVyc2lvbnMgd2lkZW5zIHVw
LgoKCkl0J3MgT0sgdG8gYmUgbWFpbnN0cmVhbSwgYnV0IGl0J3MgYSBsb3QgbW9yZSBtb3RpdmF0
aW5nIChhbmQgZnVuISkgdG8gCmJlIGJsZWVkaW5nIGVkZ2UuCgpLb2VuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
