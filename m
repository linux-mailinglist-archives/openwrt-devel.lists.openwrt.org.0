Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E288911A5CB
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 09:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8BouCXTFr0a7azUaUOlOXQRoYrwGO7w0usResH4tKD4=; b=qE/c33Xn19Gi0M3T0BfuR0VWC
	0EhUCRdwfzuk2Ldn5GEd31HSgrxMUEEJRk1I47Mi5/9xmBgkm8wIGQI/It3uNr4ooaFRr6H8rh/CR
	S0Y8YasnOrtiKhKGvSlg2tOWwHUuakEISP3DtAJu6kHC0SaH9rlJNuz7yc7ZJZ5kmvJa6eoiBcVpk
	zmUoFHutKs/2GxAW1LCYkm9OPYE+KBVc0mZYDFnbZQ8zE6syiLYZHc8LMmbXdtoTxfVNTNDgojSF9
	o6ql2ZFgpzXJPJNkz1Hv3NKz2J0fHKYK/wcXCPk7OPxhC94TRHvJuqLW3eX3mx00O3kjT9e+UGhQq
	STwJx8PzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexI5-0005Ro-6V; Wed, 11 Dec 2019 08:24:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexHw-0005RM-Fx
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 08:24:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so245560wmb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 00:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=NEi0KENMaeFtU5usPv6zUkWPnu6uigpHevvo5cxCDu4=;
 b=LrF/mlmTPEeg0+2Aue5/VBZxTi7OwbAAcUJ3tg3eWVn5CnoYHRfovUrNesn9lQ0hIe
 0x/VmOiL6v3Byur5gdQFxnX3bWHVWqxXfpYDF1+MVaqKE9NnXunY8gx1YtlzgVi7BGzA
 Ex0cowZ5wXmVS2ZAF7agbrXhbrJioSt5uYIgu6Uz5RaBNSskshoHzAjMm9FulYsmJmaL
 rq9o2odCrLm4ML/y/QdS/i4ZwmikUxHnMr3PpPpLd2CL1WiuIA0UnEfRrFoCsjzq6oJx
 R37e6Hea0NBet1x0bnb0qyD7IiirKZPEhMi2p6YjghCUN0rLzEhRXJHeIFvID0bcps+J
 KPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NEi0KENMaeFtU5usPv6zUkWPnu6uigpHevvo5cxCDu4=;
 b=YyLKAWxtucolozWRqImt4xm+vQf+Pc6/YIdPboc5bU4KGRXgDhXVHzaMWcErNw5Edh
 COv6zwuSI6lTsYB8NOucO97/IoDvNtqoXvU+v8wOFRep38F6i0fzJgVKaibLd+ogHQ4Q
 EbzKEreWRPvQUnejGKjDA69UNcWImrTZE4xHk4kkHutc1B4v2R20fohNcKrxil8MdceL
 4n7Gpo0uUgx/mHu8EP3GrMT4PRAqkw+AMCYkHQYjwd2KqUohlmy87NueZ2bK99ndXa4N
 0Nh6qXFt53tGxAvdYCTigip6fA8+qTvRFJ3zxPwVzudSDeqfVE0+L66v2h6IhC7AHcBK
 X+kA==
X-Gm-Message-State: APjAAAWrG4+fxsQq1JRLX97usl7eAzZQ2LYai2pwd4kZudmeh/aXI6Tf
 JGEPxvc+HFokmzkPaUlZmLUsbU1hM+yzVA==
X-Google-Smtp-Source: APXvYqyMGeZKZOAE6mAj0NUV9C23ZYBVgpkZx+910o1pPpz2+LCsMlo/6Ndq5BnZwEsx8VGa4oq4qw==
X-Received: by 2002:a05:600c:a:: with SMTP id g10mr2044693wmc.69.1576052640980; 
 Wed, 11 Dec 2019 00:24:00 -0800 (PST)
Received: from [192.168.111.148] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id d10sm1361183wrw.64.2019.12.11.00.24.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 00:24:00 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <CANtF88fWk+3eyOyE+HGdFrEYCTrJeZQ47b0bhyRmyCs7rHWrxQ@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <76d5fe58-93fc-8e8d-fe8a-2d69c5e8d8df@gmail.com>
Date: Wed, 11 Dec 2019 09:23:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANtF88fWk+3eyOyE+HGdFrEYCTrJeZQ47b0bhyRmyCs7rHWrxQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_002404_533032_9D567386 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: espec.ws]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: espec.ws]
Subject: Re: [OpenWrt-Devel] Requesting a custom firmware for a router
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

Ck9uIDExLzEyLzE5IDA3OjE3LCBKb2huIFdpY2sgd3JvdGU6Cj4gS2luZCByZXF1ZXN0IHRvIHVw
bG9hZCB0aGUgY3VzdG9tIGZpcm13YXJlIGZvciByb3V0ZXIgbW9kZWwgVFAtTElOSyAKPiBURC1X
ODk1MU5EIHY1LjAgaWYgcG9zc2libGUKPgo+CgpPcGVuV3J0IGZvciB0aGF0IGRldmljZSBpcyBp
bXBvc3NpYmxlLiBEZXZpY2UgaXMgdXNpbmcgdW5zdXBwb3J0ZWQgQ1BVIAooUmFsaW5rIFJUNjMz
NjVFKSBoYXMgOE1CIFJBTSAod2hpY2ggaXMgbGVzcyB0aGFuIGhhbGYgb2YgdGhlIG1pbmltdW0g
CnJlcXVpcmVkKSBhbmQgMk1CIGZsYXNoIHN0b3JhZ2UgKGFsc28gbGVzcyB0aGFuIGhhbGYgbWlu
aW11bSByZXF1aXJlZCkuCgpTZWUgaGVyZSBmb3Igc29tZW9uZSB0aGF0IG9wZW5lZCB0aGF0IGRl
dmljZSBhbmQgcG9zdGVkIHNwZWNpZmljYXRpb25zIAphbmQgaW5mbyAoaW4gcnVzc2lhbinCoGh0
dHA6Ly9tb25pdG9yLmVzcGVjLndzL3NlY3Rpb241L3RvcGljMjY5NDYyLmh0bWwKCi1BbGJlcnRv
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
