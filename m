Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CE5152825
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 10:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ol7eX1Q/O6D0Si9fcUpBGaQLWLHjyO1KogKycvso3Lg=; b=UvXOvHeF8oa4R2s3DytSFYdfJ
	yIqbRTbVFTipzKIYI2vZsIxjH3YY/fulnwIPEN9garyPAg+kd0wHItRTKDO5v0DHpCiQ+nw8UBALS
	+GIc0J2KY7lpH5hPg7+8xhUIqq+3E4rAtbdo2GKHniNpPBNKc85ZnEsMWKepZfwR47WnVCscsfD00
	ELhqIltq3A5juNSERFa6r94mBgGlbeqczFDVRIU/7GQZM7ypr8H4DPGieGrpVv4HmtHRqlmD/wsgT
	gtZUHhxc8HMYHfGwDMbW42nq7R90XkqWmCEWip9rkcamV4EPCKsMQ8xHnSUlEU1vjnJBGQ8YffNOu
	FZuV2fu8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGr8-0007Wr-Fq; Wed, 05 Feb 2020 09:20:22 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGr1-0007WI-Ku
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 09:20:16 +0000
Received: by mail-lj1-x234.google.com with SMTP id h23so1534570ljc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Feb 2020 01:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=klAc/vEQoRWCViFejAcjZs8D+LHBZ3me9B4I6RDFq/s=;
 b=qT0LiizomW2/gQKGSmcyuKCKoBOYcR4Y5eYLjlXJQwa9Eg2+G2M4WFDl4D9npei2Nu
 YIqQY6INsZMZQ7ASygcZFjaKSJpen1zJZnBPNFF/ZXHnxI4K4v6H14inU97FQMM2EWMK
 asdyCPu/x++DdKMHqQcgENtCofk5wm+AEkOx2mHw65qx1XnChwdHtSjkFb1LesbmI9HQ
 xCjV08RglGcPCQ4c1ZTkCLeV4NVBrDjk7b2Rv98Weu1ZbPBY7S+BFn3PURMFu1LdV+To
 EBcvno0dC++1suFTbx46NJSWo7U7g7KAmK3HEdrr1px2yUX/DrXjaaHredgkVFGIPh6k
 WNTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=klAc/vEQoRWCViFejAcjZs8D+LHBZ3me9B4I6RDFq/s=;
 b=Lb0awZ2Ep9/jCez90oVbZ6FL3Je7q1cPuMbAfp1ll0WKfXvp7hl+MSrNaN03rarUlV
 ccJHW90ZXxPwzH9PC7v/60mD1Z6Xv1k4WjQa4qWTWTm7C5elhzRhbYi4NrWlhVOXK2/c
 Qc+X/qNFsi8H6yGJy8CerLYg6c60jSfygSo/u2D5u0ZxDXlmXYy7qriC57onyFEdqoV7
 T35pvFiwKu3QwZ6g0juE7GgDpib+3touCKOzvqinNmLi2I4CLyrOIfkXDgHGWjR9Chea
 IQcjQr752Pe0KON6ZThlcgdV6Wm0ZooJEr/LOfCh06CUyM44BwR7TrWahSyOIDlaQeQd
 FO0Q==
X-Gm-Message-State: APjAAAXUPhJu5+kpzSl1ZUD4o0M2bT1vCyJHRQHIh4geYap0+xrIugUW
 lErMy7c/dKTY86qBnTpHQfWKkxwG
X-Google-Smtp-Source: APXvYqxSkO9I1xQAbHrUWlkRmCO+D9BxvysY7TAtS3n7xQaVWTFpmzN5O3HzYE9d/nDR3FZGBnKWGA==
X-Received: by 2002:a2e:a36a:: with SMTP id i10mr19221088ljn.107.1580894413411; 
 Wed, 05 Feb 2020 01:20:13 -0800 (PST)
Received: from [192.168.1.118]
 (host33-113-static.14-188-b.business.telecomitalia.it. [188.14.113.33])
 by smtp.gmail.com with ESMTPSA id 144sm12039051lfi.67.2020.02.05.01.20.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Feb 2020 01:20:12 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <13479067-774c-dc91-3ff9-45e12f8449cc@viisauksena.de>
 <2dace267-41f7-a4b3-ffeb-1543d8eb8200@marcant.net>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <43c86752-7148-1c9a-8ac3-0571e296a1b0@gmail.com>
Date: Wed, 5 Feb 2020 10:20:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2dace267-41f7-a4b3-ffeb-1543d8eb8200@marcant.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_012015_686361_1362B87D 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] mptcp in openwrt
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

Ck9uIDA1LzAyLzIwIDA4OjUxLCBBbmRyw6kgVmFsZW50aW4gd3JvdGU6Cj4gSGkhCj4KPiBtcHRj
cCBpcyBvbmx5IGZvciB0aGUgZGV2aWNlcyBpbnRpYXRpbmcgYW5kIHRlcm1pbmF0aW5nIHRoZSBj
b25uZWN0aW9uLiBBbGwgcm91dGVycyBpbiBiZXR3ZWVuIChtYXliZSBPcGVuV1JUKSBkbyBub3Qg
Y2FyZSBhYm91dCB0aGlzLgo+IFRoZSBvbmx5IHdheSB5b3UgY291bGQgdXNlIG1wdGNwIG9uIGEg
cm91dGVyIGlzIHdpdGggYSBwcm94eSBzZXJ2aWNlIHJ1bm5pbmcgb24gaXQsIHdoaWNoIHdpbGwg
ZG8gdGhlIG1wdGNwIHN0dWZmLgo+Cj4gUGxlYXNlIGNvcnJlY3QgbWUgaWYgSSB1bnRlcnN0b29k
IHdyb25nLgo+Cj4gS2luZCByZWdhcmRzLAo+Cj4gQW5kcsOpCgoKVGhpcyBpcyBjb3JyZWN0LgoK
QnV0IE9wZW5XcnQgaXNuJ3QgdXNlZCBqdXN0IGZvciByb3V0ZXJzIGFuZCB3aWZpIGFjY2VzcyBw
b2ludHMgbm93LgoKVGhlcmUgYXJlIGEgYnVuY2ggb2Ygc2VydmljZXMgeW91IGNhbiBydW4gb24g
T3BlbldydCBkZXZpY2VzLAoKYW5kIHlvdSBjYW4gZ2V0IHZlcnkgcG93ZXJmdWwgZGV2aWNlcyBv
ciBldmVuIHJ1biBpdCBvbiBub3JtYWwgUEMvc2VydmVyIApoYXJkd2FyZS4KClNvIGl0IG1ha2Vz
IHNlbnNlIHRvIGFzayBhYm91dCBtdWx0aXBhdGggZXZlbiBpZiBpdCdzIG5vdCByZWxldmFudCBm
b3IgYSAKcm91dGVyIG9yIHdpZmkgQVAuCgotQWxiZXJ0bwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
