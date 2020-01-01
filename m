Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E822212E098
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 22:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UXNxb9KlEppm7d5TWZbIxJLXBiUJTgFHd2rqeyC6Ows=; b=Z+GGc5qGrZuB1Jti5o6RD492W
	Vg7PTGaH3zqQViteU+lHVZTJNpSa1MhJ+RzAxa3rqaFIJuVX749fCUNGLO9eqI1Ar2DoXAKT4NBnO
	bSoTnvOvEfnARuU0mT1SkI7UkNmqBGWF+TEyIY3wQUe401sHnXdsxngVsboIWDc6fnLSFRiJNPQHv
	0PvF0vYKCaNjEy2j6tjks9LJMeU7BWKPsEYbEnW9795n4dSAQzo+qGlQqSIWd+4uN2ua6qx7UfGMZ
	yDZj1+ZgDbcLyXstcZDP3KpsCAq3sNFdYzytpm7EYZ8BIZGo6kHGJeMrddMWJckV7wAJ+KN/jCIOX
	KaXms8bpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imll8-0006ad-FZ; Wed, 01 Jan 2020 21:42:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imlkz-0006Wi-1G
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 21:42:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so37648854wrj.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 13:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jHYJ55dGgdd/zIsezsvM1pfofOscJihW3gfHUBlgVXA=;
 b=XMBZIXlrVmD09uCxttDp+SQttLh2yuIEuk+bfah9MfjaMXBPaCGIG+69Bb4YLJMytg
 oFcVBlQ1G1vc04dGeXbEDT/d4Ui8ET6eZd5LZkioIrkbNp2zfxgKJAr4lw1IOXPI4u+d
 pQ37fnWo/xm4q+LZ01H4u75Cv2Wx+ZvnBETEHSwSpVBXj2lYObMSztJ5rutz0l/cXOBR
 p7eTUJlzvWKuVvE3X3QjFuWGDu23+UUJ03JJYoWnHyRrQ0DN0DfMSh2SKbOKGBGS3U2T
 yXfUVEnEOtTAzr+FaAzFJgQ7fDmtMAwXISZ4yQd8bvBIH63hRs0siO3F6tUPkDACRDFt
 OsFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jHYJ55dGgdd/zIsezsvM1pfofOscJihW3gfHUBlgVXA=;
 b=d3ORAT/JgStmYiHJ6illR656LEYm5RZSiQNJYq2kP+yk0Nyy2iwFNnRyYJqIPqsrGy
 had/7fYAXJMDGB/SZrf3GxW2Am7+vzQN5xI4W4Eq4SYKibefxLWFaZXlgSMddvRLIPml
 jaPg9hgCbRpEmBm2m6+OctiFaTIUHy5X5WRYq1qL73Y5zCdiGj2/hFq/zgoeMTclbu4l
 UBLoy0dY6lFx5FsSKy7bHYoz7s78H6Lm9JwOilW3HY5ixWyBDN3aIeFJ72n5BgcE0hXt
 ayACjkHkLalV0VAsk3q9KXPvDfTyoHJx1iZKvyR6VrDf58GwwC/XlW/Z62fpadu/p4w4
 90/w==
X-Gm-Message-State: APjAAAWLagMqpzK/XJAR2qTCsDFDFue+4bvwA0NAecxj6Zku1I73Sqjm
 YGo5MBq5zMLPXbuLnK5pm7DI/oKdGGq66g==
X-Google-Smtp-Source: APXvYqwye5f73kYGtREb0z2tWxPeVAfvuSHdoReDoAR/JEfpwJsOCGmNOu9sEdsnBpxGkWRKhpG23g==
X-Received: by 2002:a5d:6ca1:: with SMTP id a1mr76153201wra.36.1577914938331; 
 Wed, 01 Jan 2020 13:42:18 -0800 (PST)
Received: from [192.168.1.230] ([213.152.162.94])
 by smtp.gmail.com with ESMTPSA id n189sm6713382wme.33.2020.01.01.13.42.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jan 2020 13:42:17 -0800 (PST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
 <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
 <20191231152922.GQ11377@home.paul.comp>
 <80fed589-f821-70f3-0337-24904f087351@gmail.com>
 <20200101140245.GP70184@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <46710404-a77b-3eb9-0cc3-3b986225e85a@gmail.com>
Date: Wed, 1 Jan 2020 22:42:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200101140245.GP70184@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_134221_108068_194A2E5E 
X-CRM114-Status: GOOD (  16.63  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpPbiAwMS8wMS8yMCAxNTowMiwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBBbGJlcnRvIEJ1cnNp
IDxib2JhZmV0dGhvdG1haWxAZ21haWwuY29tPiBbMjAyMC0wMS0wMSAwMzozMDozNF06Cj4gCj4g
SGksCj4gCj4+IEEgTE9UIG9mIE9wZW5XcnQgdXNlcmJhc2UgZG9lcyBub3QgZm9sbG93IHRoZSBt
YWlsaW5nIGxpc3RzIChvciBldmVuIGtub3cKPj4gd2hhdCBhIG1haWxpbmcgbGlzdCBpcyksIHNv
IGlmIHlvdSB3YW50IHRvIGhhdmUgdGhlIGZ1bGwgcGljdHVyZSBwbGVhc2UKPj4gdmlzaXQgdGhl
IGZvcnVtIGFzIHdlbGwuCj4gCj4gdXNlcnMgZG9udCBrbm93L3VzZSBtYWlsaW5nIGxpc3RzLCBk
ZXZlbG9wZXJzIGhhdGUgdG8gd2FzdGUgdGltZSB3aXRoIHRoZSBzbG93Cj4gYW5kIGJhcmVseSB1
c2FibGUgd2ViIFVJcywgbm90IG1lbnRpb25pbmcgdGhlIGFtb3VudCBvZiBub2lzZSwgbWFraW5n
IGl0Cj4gaGFyZGVyIHRvIGZpbmQgdGhlIHNpZ25hbC4KCkFoIGNvbWUgb24sIGV2ZXJ5b25lIGRp
c2xpa2VzIGJhZCB3ZWIgVUlzIGFuZCB3YXN0aW5nIHRpbWUgd2hlbiBwb3N0aW5nLCAKbm90IGp1
c3QgZGV2ZWxvcGVycy4KClRoZSBhY3R1YWwgcmVhbGl0eSBpcyB0aGF0IG1vc3QgZGV2ZWxvcGVy
cyBkb24ndCB1c3VhbGx5IGxpa2UgZG9pbmcgCmZpcnN0IGxldmVsIHRlY2ggc3VwcG9ydCAod2hp
Y2ggaXMgb2ssIGl0J3Mgbm90IGZvciBldmVyeW9uZSksIGFuZCB1c2luZyAKbWFpbGluZyBsaXN0
cyBpcyBqdXN0IHRoZSB3YXkgeW91IGFsd2F5cyB1c2VkIHNvIHlvdSBhcmUgYWNjdXN0b21lZCB0
byAKaXQuIEl0J3Mgbm90IGluaGVyZW50bHkgYmV0dGVyIG9yIG1vcmUgImRldmVsb3Blci15IiB0
aGFuIGEgZ29vZCBmb3J1bSdzIAoiZGV2ZWxvcG1lbnQiIHNlY3Rpb24uCgo+IEFueXdheSwgdGhl
IHByb2plY3QgY2VydGFpbmx5IG5lZWRzIGEgYmV0dGVyIHBvcHVsYXJpdHkvdXNhZ2UgZmVlZGJh
Y2sgaW4KPiBvcmRlciB0byBiZXR0ZXIgdW5kZXJzdGFuZCB0aGUgdXNlcmJhc2UsIHNvIHBlcmhh
cHMgc29tZSBraW5kIG9mIHJ1biB0aW1lCj4gc3RhdGlzdGljc1sxXSB3b3VsZCBoZWxwIGluIHRo
aXMgcmVnYXJkLgo+IAo+IE9yIHBlcmhhcHMgaXQgd291bGQgYmUgcG9zc2libGUgdG8gZGlzdGls
bCB0aGUgc2ltaWxhciBpbmZvcm1hdGlvbiBmcm9tIHRoZQo+IGZvbGxvd2luZyBwYXNzaXZlIHNv
dXJjZXMgYXMgd2VsbDoKPiAKPiAgIC0gZG93bmxvYWQgc3RhdHMKPiAgIC0gZm9ydW0gcG9zdHMK
PiAgIC0gSVJDIGxvZ3MKPiAgIC0gYnVnIHRyYWNrZXIvaXNzdWVzCj4gCj4gTm90IHNvIHRyaXZp
YWwsIGJ1dCBsZXNzIHByaXZhY3kgaW50cnVzaXZlLCBwcm9iYWJseSBsZXNzIGFjY3VyYXRlIGFz
IHdlbGwuCj4gSWRlYWxseSB3ZSB3b3VsZCBoYXZlIGJvdGggOi0pCgpUaGVyZSBpcyBhbHJlYWR5
IHNvbWUgZmlybXdhcmUvcGFja2FnZSBkb3dubG9hZCBzdGF0aXN0aWNzIGluIHRoZSBtYWluIApk
b3dubG9hZCBzZXJ2ZXIgdGhhdCB3YXMgcHV0IHVwIGhlcmUKaHR0cHM6Ly9kb3dubG9hZHMub3Bl
bndydC5vcmcvc3RhdHMvCmFuZCB0aGF0IHBhZ2UgaXMgbGlua2VkIHRvIGZyb20gdGhlIGRvd25s
b2FkIHBhZ2UgaW4gdGhlIHdpa2kgCmh0dHBzOi8vb3BlbndydC5vcmcvZG93bmxvYWRzCgpJIGRv
bid0IGtub3cgaWYgdGhhdCBpbmNsdWRlcyBtaXJyb3JzIG9yIG5vdCwgd291bGQgYmUgY29vbCB0
byBhc2sgCm1pcnJvcnMgdG8gcHJvdmlkZSBkb3dubG9hZCBkYXRhIHNvIHdlIGNhbiBpbnRlZ3Jh
dGUgdGhlbSBpbiB0aGUgYmlnZ2VyIApwaWN0dXJlLgoKQWZhaWsgRGlzY291cnNlICh0aGUgZm9y
dW0gc29mdHdhcmUpIGhhcyBhIHdlYiBBUEkgeW91IGNhbiB1c2UgdG8gCmF1dG9tYXRlIHRoaW5n
cywgbGlrZSBmb3IgZXhhbXBsZSBzZWFyY2hlcyB0byBidWlsZCBzdGF0aXN0aWNzCmh0dHBzOi8v
ZG9jcy5kaXNjb3Vyc2Uub3JnCnNvIHdlIGNhbiBjb2xsZWN0IGluZm8gYWJvdXQgZm9ydW0gcG9z
dHMgdG9vCgpJIGRvbid0IGtub3cgYWJvdXQgSVJDIGFuZCB0aGUgRmx5c3ByYXkgYnVnIHRyYWNr
ZXIuCgotQWxiZXJ0bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
