Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B2A50FA6
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 17:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C6ib11cRkj4xHu0RF9gJdfb7NtTxF/ourHMc72kM8J8=; b=tVO2qvP0PO0tdc/Cjat/tI8oP
	FHTQTxPpYrx1pexYC5x+HXOMbhEpm58yGyBTs1dCPXXmvLwl3XE9WwBMVX5JQ+x0f+TpEmu3ZmGHt
	PARb9H5nBuFA66aKQFjCDHcH9dEtlp5t7FPrhbDmTkXmY47z66z/2q9BtJ6Y8H7MaAy4Pyo3hWuYh
	P4Ma5wabycT+Ru0hLxWyD8B4ivSYdFGyvO76IXobH/1g99qzOCy4UKg0jpKKGd/dRu3/f0ZNqVNMy
	SyEWArvlrC8jcZGHTLPqBYQ2qJPb+AoVdlLxIN3Jkw/FL3qaXc1ZSFMgeY5bRNki3NiDgZ50K4L2C
	2nPhsVlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQXm-0003Uz-FT; Mon, 24 Jun 2019 15:06:06 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQXb-0003RS-51
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 15:05:56 +0000
Received: by mail-lf1-x135.google.com with SMTP id u10so10274802lfm.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 08:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=SNTC50OJ201wAJzZD1fexLuPGSeQmYo+nX+pT9CRPoU=;
 b=a+ZevnfYKehqGshWwyz+xsnPC1ekzXGzdY/pn10I0Aq1uBo2bv9/TCp2HSz4dvxRMS
 uiNx6rNKl28a5vQQIpUTAd4KhEs+mBHT8EiIAO2UXrmJ2Sv2CsFlKm549xavdS1nUMSh
 GSb3aevv/+KBE1INa6i0C/KKTtQ7bvUANkKdgSnOqc/FAdOy25yQFyTyOCPf5LD4lKpM
 ts22+OqVq/snAeUmEYq3eDmLPm4gr142JlA6V7ADyzBwzNZUDbZ/uqaDGlHFDT8+ia0E
 Wm+BdS0ZKJPm45StzsaX+Vzl3ohp6fa/N5gqQloYdTsMVDTWbAenvIZHbn++AHP1z1nz
 PKiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SNTC50OJ201wAJzZD1fexLuPGSeQmYo+nX+pT9CRPoU=;
 b=dic9Vf7NH7gkF6kXFSKw0Aza1sl0Vs/M838qYUViI0FvZwEz17nzc0iesmp+JPKt+s
 OTnlheG0ovyI8LDJsQDrdzTqT88JHKSm5XgZZyvOQ8lAcfhL7B1GmmhmYseUNDqphSma
 pjdytgctvylyLK7NBdm1Elnu/IJs3Dl+vN4W4y+A1JEIPR2kxf0PQpXge2Y9akCt6f/g
 jeCCifoXLq9LVOSVyu84VEL2LMAOAW7LluGev+Ps60oBD0ZTJ8H2xaYJZ8GUdKDHgOfh
 DAGeggN3txTwl7aOQ0zdEEBC0dEb10q7n8jSC22vrv9KcsoZ1XS5h3iM+2ajI0lTS+5t
 9iCQ==
X-Gm-Message-State: APjAAAWaVp0zDDW9jJSgvAkt7kGYx13MH2Ak/Gg0KDKTq4QVaS/pYW5N
 Xg2kTSQpvOI6zoJIqdgy6TE=
X-Google-Smtp-Source: APXvYqwt+1SpYYLeUWuCuRfu08PIG863WbQ/nSzaVXR1Pkalx6W+6C6DYEeF9xZjiuZlWiLvUcMwkg==
X-Received: by 2002:a19:8c06:: with SMTP id o6mr11970963lfd.176.1561388752675; 
 Mon, 24 Jun 2019 08:05:52 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id v2sm1586490lfi.52.2019.06.24.08.05.51
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 08:05:52 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
Message-ID: <472ab64d-cc89-56d7-f813-adeffb60ce2c@gmail.com>
Date: Mon, 24 Jun 2019 17:05:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_080555_225105_0F2DBEAE 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] sysupgrade: extending firmware validation
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

T24gMTkuMDYuMjAxOSAxNjowNywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IE15IHF1ZXN0aW9u
IGlzOiB3aGF0IGRvIHlvdSBmaW5kIHRoZSBiZXN0IHdheSBvZiBpbXBsZW1lbnRpbmcgaXQ/CgpU
b2RheSBJUkMgY2hhdCBsb2cgZm9yIGEgcmVmZXJlbmNlOgoKWzEyOjIxXSA8cm1pbGVja2k+IGd1
eXMsIHdvdWxkIHlvdSBjaGVjayBteSAic3lzdXBncmFkZTogZXh0ZW5kaW5nIGZpcm13YXJlIHZh
bGlkYXRpb24iIGUtbWFpbD8KWzEyOjIxXSA8cm1pbGVja2k+IGpvdzogdGhhdCBwb3NzaWJseSBh
ZmZlY3RzIEx1Q0kKWzEyOjIxXSA8cm1pbGVja2k+IGJsb2dpYzogeW91IGxpa2UgZGVzaWduaW5n
IHRoaW5ncywgbWF5YmUgY2hlY2sgdGhhdCBvbmU/ClsxMjoyM10gPGJsb2dpYz4gcm1pbGVja2k6
IGxldHMgaGF2ZSBhIGxvb2sgcmlnaHQgbm93ClsxMjoyNV0gPGJsb2dpYz4gcm1pbGVja2k6IHN5
c3VwZ3JhZGUgaXMgYWxyZWFkeSB0cmlnZ2VyZWQgZnJvbSBwcm9jZApbMTI6MjZdIDxibG9naWM+
IHNvIHRoZSBzeXN1cGdyYWRlIHNoZWxsIGZvbyBjb3VsZCBnYWluIGEgaGVscGVyIHRoYXQgeW91
IHBhc3MgYSByZXN1bHQgd2hpY2ggZ2V0cyBzZW50IG91dCB0byBwcm9jZCB2aWEgdWJ1cwpbMTI6
MjZdIDxibG9naWM+IHRoZSBmbGFzaCBwcm9jZXNzIHdvdWxkIG5lZWQgdG8gYmUgc3BsaXQgaW50
byBjaGVjayBhbmQgZmxhc2gKWzEyOjI2XSA8YmxvZ2ljPiBhZCBwcm9jZCB3b3VsZCBjYWxsIHRo
ZW0gc2VwYXJhdGxleQpbMTI6MjZdICogcm1pbGVja2kgaXMgdGhpbmtpbmcKWzEyOjI2XSA8Ymxv
Z2ljPiBhbmQgaWYgdGhlIGZpcnN0IHJldHVybiAhMCB0aGVuIGl0IGp1c3QgZG9lcyBub3Qgc3Rh
cnQgMi9yYW1mcyBhbmQgd2FpdHMgZm9yIHRoZSByZXN1bHQganNvbgpbMTI6MjddIDxibG9naWM+
IGFuZCB3aGVuIHRoZSByZXN1bHQganNvbiBpcyB0aGVyZSB3ZSBjb3VsZCBwcm92aWRlIGl0IG9u
IHVidXMKWzEyOjI3XSA8YmxvZ2ljPiB0aGF0IHdheSB5b3UgY2FuIHRocm93IGFueXRoaW5nIGlu
dG8gdGhlIGpzb24sIHByb2NkIHdvdWxkIGp1c3QgbWVtY3B5IHRoZSBibG9iIGFuZCBoYXZlIGEg
c3lzdXBncmFkZS5zdGF0dXMgb3Igc2ltaWxhciB1YnVzIG1ldGhvZApbMTI6MjddIDxibG9naWM+
IGFzIGZvciBzaWduaW5nIC4uLi4KWzEyOjI3XSA8S2FuamlNb25zdGVyPiBkb2Vzbid0IHN5c3Vw
Z3JhZGUgYWxyZWFkeSBoYXZlIGEgY2hlY2sgb25seSBjb21tYW5kL29wdGlvbj8KWzEyOjI4XSA8
cm1pbGVja2k+IHN5c3VwZ3JhZGUgLVQgL3RtcC9mb28uaW1nClsxMjoyOF0gPGJsb2dpYz4gS2Fu
amlNb25zdGVyOiBpdCBkb2VzIGJ1dCBub3QgdmlhIHVidXMvcHJvY2QgaSB0aGluawpbMTI6Mjhd
IDxybWlsZWNraT4gaXQncyAwLzEgcmVzdWx0ClsxMjoyOF0gPGJsb2dpYz4gS2FuamlNb25zdGVy
OiBpdCByZXF1aXJlcyB0aGUgbHVjaS1oZWxwZXIgdGhpbmd5ClsxMjozMV0gPHJtaWxlY2tpPiBz
b3JyeSwgaSdsbCBuZWVkIG1vcmUgZXhwbGFuaW5nIHRoZXJlLCBzdGFydGluZyB3aXRoIHRoZTog
InNvIHRoZSBzeXN1cGdyYWRlIHNoZWxsIGZvbyBjb3VsZCBnYWluIGEgaGVscGVyIHRoYXQgeW91
IHBhc3MgYSByZXN1bHQgd2hpY2ggZ2V0cyBzZW50IG91dCB0byBwcm9jZCB2aWEgdWJ1cyIKWzEy
OjMxXSA8cm1pbGVja2k+IGRvIHlvdSB3YW50IGEgYSBuZXcgY2FsbCBsaWtlICIvc2Jpbi9zeXN1
cGdyYWRlIGZvbyAvdG1wL2ZpbGUiIHRoYXQgY2FsbHMgInVidXMgY2FsbCBwcm9jZCBzb21ldGhp
bmciPwpbMTI6MzVdIDxibG9naWM+ICAvc2Jpbi9zeXN1cGdyYWRlIG5lZWRzIGEgbmV3IGZ1bmN0
aW9uIGluc2lkZSB0aGF0IGdldHMgY2FsbGVkIGZyb20gdGhlIHBsYXRmb3JtX2NoZWNrX2ltYWdl
KCkKWzEyOjM3XSA8cm1pbGVja2k+IGFuZCB0aGF0IG5ldyBmdW5jdGlvbiBzaG91bGQgY2FsbCB1
YnVzPyBvciBwcmludCBKU09OPwpbMTI6MzldIDxibG9naWM+IHN5c3VwZ3JhZV9jaGVja19yZXN1
bHQoKSBvciB3aGF0ZXZlciB0aGF0IHNlbmQgdGhlIHJlYXNvbiB2aWEgdWJ1cyB0byBwcm9jZApb
MTI6MzldIDxibG9naWM+IHNvIHRoYXQgZWFjaCB0YXJnZXQgY2FuIGJlIHVwZ3JhZGVkIHRvIHRo
aXMgbmV3IGltYWdlIGNoZWNrIGNvZGUKWzEyOjM5XSA8YmxvZ2ljPiBpZiB0aGUgY2hlY2tfaW1h
Z2UgZmFpbHMgdGhlIHRhcmdldCBqdXN0IGNhbGxzIHRoYXQgaGVscGVyClsxMjozOV0gPGJsb2dp
Yz4gYW5kIHByb2NkIHB1dHMgdGhlIHJlc3VsdCBpbnRvIHVidXMgYXMgYSBjYWxsIHRoZSB3ZWJ1
aSBjYW4gZG8KWzEyOjQxXSA8cm1pbGVja2k+IG9rLCBJIHRoaW5rIEkgZ290IHRoZSBpZGVhLCB0
aGFua3MhClsxMjo0Ml0gPHJtaWxlY2tpPiBpJ2xsIHRyeSB0byBpbXBsZW1lbnQgaXQgcGllY2Ug
YnkgcGllY2UgYW5kIHNlZSBob3cgaXQgZ29lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
