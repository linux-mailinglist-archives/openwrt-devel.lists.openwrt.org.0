Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2B1BF256
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 14:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pYLK+Jw95hFj34Kpahi/3kzybxX4VK9XWysML7L9qPw=; b=gjuNHo7Q3KfIHiBkVyBTBFS5E
	4jLi/1w9TtcZRiHMRbWkzZQ3KBK5FoIPBquigmZZ2lnmIr+XPXNsavedbLP9rcdUBjgTVRCGz7Iog
	2aQU9vJjaln4JfmZUpLIm450ypy6LL6lz+cwXzAHh4/lJcrurL6CHKP1uIion3MOxjukirBq507vw
	FkalFtkqn43r4fjM//+MlG+RgjjBMDxm8mqvFuLaeDJvfXHmCiXgwjtieSrNIJs4wLVbDOmJBGKs5
	GNDIQSEgNN/aktMGDzjD1crt+hqAZFHdPqCAe4BSVydKoLV6AZBtBRtYMaqXbK0nzLZhc6ZCXtRCD
	jh1+8mjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSS8-0005xg-Ks; Thu, 26 Sep 2019 12:00:56 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSRv-0005sa-TL
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 12:00:45 +0000
Received: by mail-lf1-x143.google.com with SMTP id d17so1483083lfa.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 05:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7XWikGZouALuaXU8QmpV5uGjR79Qy2+P6Xqtc8grImI=;
 b=sFUC245uUPv8Jm5DxG0weHF5VxJhXxBTLmRx3nXHvoxzSuhNd29acmLw6qDZAyxufI
 SSKZ8dbk/lqXeqsCsUY4LUnUV77oL7v/d0VSQr8atsQ2ikUOq0O+NnnMdSNzirB0eaip
 5xgv/+2DjGZF9XxDIVQd8GOsn7/Ic/G4PQ6uSmqAW7HFXFOP1/dX3H3tqTFy+x7OVvHq
 8KlDu/O+pKmVIYh1K15y5Ifbi83Y1l/vT+UiwKUMMZ8j12sOJj+H4d7z576rUZbuPW5l
 YQzZvoXuxxus7Mh7/mVq7uKBeQtW3eeMOR/NL2PxViqOSHkR9SgWwrBO/1WVoIR7FuEk
 Bg+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7XWikGZouALuaXU8QmpV5uGjR79Qy2+P6Xqtc8grImI=;
 b=tHKkDNTo69k9pgqhtBZzy7lCPmQIZ+TsOd31YuncYyeyodfkIWqcqgkaujluXASRn1
 bxNOmn9HooqjUB+eo9M1/qAER7nR3eX2Ivdwru7w4TwJsP8gOcsbLcQZ+a2zr83L7LHn
 XffZvdLTi+gcNEPiBUt1iUt7xKj0trPGbsF5xhglSjvP9NTeOyxGwE9FjighqoiGzi7t
 fASOpAkmFutinpivN3IaYxcdgpCMjwC3Dp5B6khdQYbKNSAkkYkCei9VZ1QJ1MmGbr75
 fhDjck38u/YYXrfIT8VFidBSHY+3zddP4gBb0Ew7WDFBVyKirAk/d4VNNStu58yAlpVy
 XD5A==
X-Gm-Message-State: APjAAAWYPQolpDZJZtI6S24l4dNO0sKs207VSOoBBv8ftKxj/NX6x095
 +TGi0Cwfd/644R64Cm9NEaM=
X-Google-Smtp-Source: APXvYqydhbk75lEKQ+0ee3AlhEdA+ZAXZR7K2+v7lAdPiWV4nE2zXFJ8N+zIgKY7bBCLDWVGIZybdg==
X-Received: by 2002:a19:2c1:: with SMTP id 184mr1989422lfc.100.1569499241445; 
 Thu, 26 Sep 2019 05:00:41 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id f5sm486379lfh.52.2019.09.26.05.00.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 05:00:40 -0700 (PDT)
To: Johannes Berg <johannes@sipsolutions.net>, Jouni Malinen <j@w1.fi>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20190920133708.15313-1-zajec5@gmail.com>
 <20190920140143.GA30514@w1.fi>
 <4f6f37e5-802c-4504-3dcb-c4a640d138bd@milecki.pl>
 <9ece533700be8237699881312a99cc91c6a71d36.camel@sipsolutions.net>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <09503390-91f0-3789-496a-6e9891156c5e@gmail.com>
Date: Thu, 26 Sep 2019 14:00:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <9ece533700be8237699881312a99cc91c6a71d36.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_050043_977561_AE40FBC5 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH RFC] cfg80211: add new command for
 reporting wiphy crashes
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
Cc: hostap@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 openwrt-devel@lists.openwrt.org, "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjYuMDkuMjAxOSAxMzo1NSwgSm9oYW5uZXMgQmVyZyB3cm90ZToKPiBPbiBUaHUsIDIwMTkt
MDktMjYgYXQgMTM6NTIgKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPj4KPj4gSW5kZWVk
IG15IG1haW4gY29uY2VydCBpcyBBUCBtb2RlLiBJJ20gYWZyYWlkIHRoYXQgY2ZnODAyMTEgZG9l
c24ndAo+PiBjYWNoZSBhbGwgc2V0dGluZ3MsIGNvbnNpZGVyIGUuZy4gbmw4MDIxMV9zdGFydF9h
cCgpLiBJdCBidWlsZHMKPj4gc3RydWN0IGNmZzgwMjExX2FwX3NldHRpbmdzIHVzaW5nIGluZm8g
ZnJvbSBubDgwMjExIG1lc3NhZ2UgYW5kCj4+IHBhc3NlcyBpdCB0byB0aGUgZHJpdmVyIChyZGV2
X3N0YXJ0X2FwKCkpLiBPbmNlIGl0J3MgZG9uZSBpdAo+PiBjYWNoZXMgb25seSBhIHNtYWxsIHN1
YnNldCBvZiBhbGwgc2V0dXAgZGF0YS4KPj4KPj4gSW4gb3RoZXIgd29yZHMgZHJpdmVyIGRvZXNu
J3QgaGF2ZSBlbm91Z2ggaW5mbyB0byByZWNvdmVyIGludGVyZmFjZXMKPj4gc2V0dXAuCj4gCj4g
U28gdGhlIGRyaXZlciBjYW4gY2FjaGUgaXQsIGp1c3QgbGlrZSBtYWM4MDIxMS4KPiAKPiBZb3Ug
Y2FuJ3Qgc2VyaW91c2x5IGJlIHN1Z2dlc3RpbmcgdGhhdCB0aGUgZHJpdmVyIGRvZXNuJ3QgKmhh
dmUqIGVub3VnaAo+IGluZm9ybWF0aW9uIC0gZXZlcnl0aGluZyBwYXNzZWQgdGhyb3VnaCBpdCA6
KQoKUHJlY2lzZWx5OiBpdCBkb2Vzbid0IHN0b3JlIChjYWNoZSkgZW5vdWdoIGluZm8uCgoKPj4g
SSBtZWFudCB0aGF0IGhhcmR3YXJlIGhhcyBiZWVuIHJlY292ZXJlZCAmIGlzIG9wZXJhdGlvbmFs
IGFnYWluIChkcml2ZXIKPj4gY2FuIHRhbGsgdG8gaXQpLiBJIGV4cGVjdGVkIHVzZXIgc3BhY2Ug
dG8gcmVjb25maWd1cmUgYWxsIGludGVyZmFjZXMKPj4gdXNpbmcgdGhlIHNhbWUgc2V0dGluZ3Mg
dGhhdCB3ZXJlIHVzZWQgb24gcHJldmlvdXMgcnVuLgo+Pgo+PiBJZiBkcml2ZXIgd2VyZSBhYmxl
IHRvIHJlY292ZXIgaW50ZXJmYWNlcyBzZXR1cCBvbiBpdHMgb3duICh3aXRoIGEgaGVscAo+PiBv
ZiBjZmc4MDIxMSkgdGhlbiB1c2VyIHNwYWNlIHdvdWxkbid0IG5lZWQgdG8gYmUgaW52b2x2ZWQu
Cj4gCj4gVGhlIGRyaXZlciBjYW4gZG8gaXQsIG1hYzgwMjExIGRvZXMuIEl0J3MganVzdCBhIG1h
dHRlciBvZiB3aGF0IHRoZQo+IGRyaXZlciB3aWxsIGRvIG9yIG5vdC4KPiAKPj4gRmlyc3Qgb2Yg
YWxsIEkgd2FzIHdvbmRlcmluZyBob3cgdG8gaGFuZGxlIGludGVyZmFjZXMgY3JlYXRpb24uIEFm
dGVyIGEKPj4gZmlybXdhcmUgY3Jhc2ggd2UgaGF2ZToKPj4gMSkgSW50ZXJmYWNlcyBjcmVhdGVk
IGluIExpbnV4Cj4+IDIpIE5vIGNvcnJlc3BvbnNpbmcgaW50ZXJmYWNlcyBpbiBmaXJtd2FyZQo+
IAo+PiBTeW5jaW5nIHRoYXQgKHJlLWNyZWF0aW5nIGluLWZpcm13YXJlIGZpcm13YXJlcykgbWF5
IGJlIGEgYml0IHRyaWNreQo+PiBkZXBlbmRpbmcgb24gYSBkcml2ZXIgYW5kIGhhcmR3YXJlLgo+
IAo+IFdlIGRvIHRoYXQgaW4gbWFjODAyMTEsIGl0IHdvcmtzIGZpbmUuIFdoeSB3b3VsZCBpdCBi
ZSB0cmlja3k/CgpJbiBicmNtZm1hYyBvbiAuYWRkX3ZpcnR1YWxfaW50ZigpIHdlOgoxKSBTZW5k
IHJlcXVlc3QgdG8gdGhlIEZ1bGxNQUMgZmlybXdhcmUKMikgV2FpdCBmb3IgYSByZXBseQozKSBP
biBzdWNjZXNzIHdlIGNyZWF0ZSBpbnRlcmZhY2UKNCkgV2Ugd2FrZSB1cCAuYWRkX3ZpcnR1YWxf
aW50ZigpIGhhbmRsZXIKCkknbGwgbmVlZCB0byBmaW5kIGEgd2F5IHRvIHNraXAgc3RlcCAzIGlu
IHJlY292ZXJ5IHBhdGggc2luY2UgaW50ZXJmYWNlCm9uIGhvc3Qgc2lkZSBhbHJlYWR5IGV4aXN0
cy4KCgo+IElmIHNvbWV0aGluZyBmYWlscywgSSB0aGluayB3ZSBmb3JjZSB0aGF0IGludGVyZmFj
ZSB0byBnbyBkb3duLgo+IAo+PiBGb3Igc29tZSBjYXNlcyBpdCBjb3VsZCBiZSBlYXNpZXIgdG8K
Pj4gZGVsZXRlIGFsbCBpbnRlcmZhY2VzIGFuZCBhc2sgdXNlciBzcGFjZSB0byBzZXR1cCB3aXBo
eSAoY3JlYXRlIHJlcXVpcmVkCj4+IGludGVyZmFjZXMpIGFnYWluLiBJJ20gbm90IHN1cmUgaWYg
dGhhdCdzIGFjY2VwdGFibGUgdGhvdWdoPwo+Pgo+PiBJZiB3ZSBhZ3JlZSBpbnRlcmZhY2VzIHNo
b3VsZCBzdGF5IGFuZCBkcml2ZXIgc2ltcGx5IHNob3VsZCBjb25maWd1cmUKPj4gZmlybXdhcmUg
cHJvcGVybHksIHRoZW4gd2UgbmVlZCBhbGwgZGF0YSBhcyBleHBsYWluZWQgZWFybGllci4gc3Ry
dWN0Cj4+IGNmZzgwMjExX2FwX3NldHRpbmdzIGlzIG5vdCBhdmFpbGFibGUgZHVyaW5nIHJ1bnRp
bWUuIEhvdyBzaG91bGQgd2UKPj4gaGFuZGxlIHRoYXQgcHJvYmxlbT8KPiAKPiBZb3UgY2FuIGNh
Y2hlIGl0IGluIHRoZSBkcml2ZXIgaW4gd2hhdGV2ZXIgZm9ybWF0IG1ha2VzIHNlbnNlLgo+IAo+
PiBJIHdhcyBhaW1pbmcgZm9yIGEgYnJ1dGFsIGZvcmNlIHNvbHV0aW9uOiBqdXN0IG1ha2UgdXNl
ciBzcGFjZQo+PiBpbnRlcmZhY2VzIG5lZWQgYSBmdWxsIHNldHVwIGp1c3QgYXQgdGhleSB3ZXJl
IGp1c3QgY3JlYXRlZC4KPiAKPiBZb3UgY2FuIHN0aWxsIGRvIHRoYXQgYnR3LCBqdXN0IHVucmVn
aXN0ZXIgYW5kIHJlLXJlZ2lzdGVyIHRoZSB3aXBoeS4KCk9LLCBzbyBiYXNpY2FsbHkgSSBuZWVk
IHRvIHdvcmsgb24gY2FjaGluZyBzZXR1cCBkYXRhLiBTaG91bGQgSSB0cnkKZG9pbmcgdGhhdCBh
dCBteSBzZWxlY3RlZCBkcml2ZXIgbGV2ZWwgKGJyY21mbWFjKT8gT3Igc2hvdWxkIEkgZm9jdXMg
b24KZ2VuZXJpYyBzb2x1dGlvbiAoY2ZnODAyMTEpIGFuZCBjb25zaWRlciBvZmZsb2FkaW5nIG1h
YzgwMjExIGlmCnBvc3NpYmxlPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
