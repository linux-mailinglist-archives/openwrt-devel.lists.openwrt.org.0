Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4961C34A8
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 10:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rd/iOhBtqVvvjiZKj2PEwRtslxRI6H9myUjF7DctRxY=; b=UJbbwhHFWANk/sahT5dCkOKUy
	KqVNxPEezQnZhrM5sVQUe/UElrgb41YOoAzDYOX0WNVkKHCMxSdXmwLkRsEXle4fRaHXQ/c82dNZA
	hEhJNWhhWLgCO0F/nSWJd2GrT+Yc0nb6naPlHi3YSF625K9HT7ojvZx/DbJbLt+eCaSD4cguoRiMM
	vJnrj0j+AVMGCEG5S4Umh+8oq9Du60l+K18pF4ib/ZGLrhqVgJpJ8DcGoE1I5KIJtmcVKnggjxGC0
	kKIO2/eymJUG8LLMafhpCDExwjDeSF2xGV6kpwQqIhIaRciKB0sQo6LDy9hkdD9sWQkscczGgS832
	Ey0Am3wZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWeR-000776-NL; Mon, 04 May 2020 08:40:35 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWeI-00076M-Gv
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 08:40:29 +0000
Received: by mail-lf1-x143.google.com with SMTP id b20so8714732lff.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 01:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JVfZpxmTn5rWXMUMq6vqMVTbvlGs8POnfhohV3p83m8=;
 b=c9I16NDD32d3FfVRTbuoN0N7SOdSMWS+10DR4PTpK+yBT5ptREKXowkRvVGu4OvZvf
 EXdRw/VGbpbOzz4Ib2SFrJuBdS6Z+o2krUKB+eW7ptuK/Cd02hTL1kIMvjZFkqH+rtvS
 Etam7Bc+D6Psjl+y3J3QMBdLlIw0fpiOpe5v0HZMvZp6wASuu2qVgWOIknZyynFwFmbE
 QiOhC2SbK/xN+gPiVPm46Ng0OYIad7uf5kDQpoNalfTVRl+dH8qJLfy0A+A06sERzRAC
 HhTzVUuwMETmcBW9vRPO289Ehoqr3NCMZtNJcsP7WwRGZB3mOylaYQSYX+WQ9fG/NbmJ
 JdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JVfZpxmTn5rWXMUMq6vqMVTbvlGs8POnfhohV3p83m8=;
 b=Uxs1XingB8Sn9EKXNcV6XghtXdg/a8oIDTV2gRgAj9Kj399xfwt5bjx7NGuDqMWAhO
 xp3gnVbIQ8oeVNJ2c4sQp3moEnQeJ1VNuUBzXxYVnc7NWTE0zAX6kr5agxy6G+bLo3Gi
 npq9gCr1XWSu0VwmygHnLnSkQEJlQ78Rj/M/w86z2hGuKw+P5+SPcphlMzctV/UOpOcz
 NgJKMqfdzNBD1fSZ0DNRGCVQU/6pMDs4n3aWG83W38UeYLJ1bLeVAc6kUK4I7sPmGgdP
 YPeXo4e83nXXW2HseikzuvbDO2n9FCEv7dzoKe2HlsXeogCAEwLppYDo7PHm2R6r0LFj
 S08Q==
X-Gm-Message-State: AGi0PuaJqG/HxxiZ8+xJWqjQReSoTJluAV/Y+291ZLJlmpZ4ce+SAZIE
 QlOTdrMG0JcAC15PWvaChMQ=
X-Google-Smtp-Source: APiQypL+J7JgLv12f5lIqejN2BgtrCsJ0vbSiJsrFaWeu10NIKULPbw3ed8Ru4uEETPduPW7kFV30g==
X-Received: by 2002:ac2:55b1:: with SMTP id y17mr6709241lfg.168.1588581624314; 
 Mon, 04 May 2020 01:40:24 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id k18sm11890269lfg.81.2020.05.04.01.40.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 01:40:23 -0700 (PDT)
To: Paul Spooren <mail@aparcar.org>, Hannu Nyman <hannu.nyman@iki.fi>,
 openwrt-devel@lists.openwrt.org
References: <443a1fbcb9985a33b54ddb18dbabffc89f67a442.camel@flyn.org>
 <5724f00f-24a2-31d9-cb4d-bdd29f8f8c17@iki.fi>
 <4f9abf14ffa2706d630bf9609f3f346e4f43154f.camel@aparcar.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <a61c2545-d2ff-19a1-2b7b-0001b3eb6e93@gmail.com>
Date: Mon, 4 May 2020 10:40:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4f9abf14ffa2706d630bf9609f3f346e4f43154f.camel@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014026_587173_F359498D 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Uncompress image: trailing garbage ignored
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
Cc: rafal@milecki.pl
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjcuMDQuMjAyMCAwMDo0OCwgUGF1bCBTcG9vcmVuIHdyb3RlOgo+IE9uIFRodSwgMjAyMC0w
NC0yMyBhdCAyMzoyOSArMDMwMCwgSGFubnUgTnltYW4gd3JvdGU6Cj4+IFcuIE1pY2hhZWwgUGV0
dWxsbyBraXJqb2l0dGkgMjMuNC4yMDIwIGtsbyAxOS41MDoKPj4+IEkgaGF2ZSBzdGFydGVkIHRv
IG5vdGljZSBhIGd1bnppcCB3YXJuaW5nIHdoZW4gZGVjb21wcmVzc2luZyB0aGUKPj4+IE9wZW5X
cnQgaW1hZ2VzIEkgYnVpbGQuIFRoaXMgaXMgd2l0aCBtYXN0ZXIgZGYyN2U5NDk6Cj4+Pgo+Pj4g
Z3VuemlwICBvcGVud3J0L2Jpbi90YXJnZXRzL3g4Ni82NC9vcGVud3J0LXg4Ni02NC1nZW5lcmlj
LWV4dDQtCj4+PiBjb21iaW5lZC5pbWcuZ3ogLWMgPi9kZXYvbnVsbAo+Pj4gZ3ppcDogb3Blbndy
dC1hcXVpbmFzLWdpdC9iaW4vdGFyZ2V0cy94ODYvNjQvb3BlbndydC14ODYtNjQtZ2VuZXJpYy0K
Pj4+IGV4dDQtY29tYmluZWQuaW1nLmd6OiBkZWNvbXByZXNzaW9uIE9LLCB0cmFpbGluZyBnYXJi
YWdlIGlnbm9yZWQKPj4+Cj4+PiBBc2lkZSBmcm9tIHRoZSB3YXJuaW5nLCBndW56aXAgZXhpdHMg
d2l0aCBhIGNvZGUgb2YgMi4gVGhlIGd1bnppcCBtYW4KPj4+IHBhZ2UgaW5kaWNhdGVzIHRoYXQg
YW4gZXhpdCBjb2RlIG9mIDIgaW5kaWNhdGVzIGEgd2FybmluZy4KPj4+Cj4+PiBJcyB0aGlzIGEg
cmVzdWx0IG9mIGFuIGludGVuZGVkIGNoYW5nZT8gU2hvdWxkIEkgZXhwZWN0IHRoaXMgdG8KPj4+
IGNvbnRpbnVlPyBBcmUgd2Ugc25lYWtpbmcgYSBoYXNoIG9yIHNpZ25hdHVyZSBpbiB0aGVyZT8g
SWYgc28sIEkKPj4+IHN1cHBvc2UgSSB3aWxsIGFkanVzdCBzb21lIG9mIHRoZSBzY3JpcHRzIEkg
dXNlIHRvIGFjY291bnQgZm9yIHRoZQo+Pj4gbm9uLXplcm8gZXhpdCBjb2RlLgo+Pgo+PiBMaWtl
bHkgd2UgYXJlIGF0dGFjaGluZyBhIHNpZ25hdHVyZSBzaW5jZSBjb21taXQgZjgxNDEyMTYwIGEg
d2VlayBhZ286Cj4+Cj4+IGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3Blbndy
dC5naXQ7YT1jb21taXRkaWZmO2g9ZjgxNDEyMTYwMGU1Y2Y0M2ZkNzVmZTkzZTViMWI1NGY2NWI3
MWJjZAo+Pgo+IAo+IFRoZSBzeXN1cGdyYWRlIHByb2Nlc3MgYXV0b21hdGljYWxseSBoYW5kZWxz
IGNvbXByZXNzZWQgaW1hZ2VzLCBob3dldmVyIHRoZQo+IHZhbGlkYXRpb24gZG9lcyBub3QuIEN1
cnJlbnRseSBmd3Rvb2wgdmFsaWRhdGlvbiBpbiAvdXNyL2xpYi9md3Rvb2wuc2ggcmVhZHMgdGhl
Cj4gc3lzdXBncmFkZSguZ3opIGFzIGlzOgo+IAo+IGlmICEgZnd0b29sIC1xIC1zIC90bXAvc3lz
dXBncmFkZS51Y2VydCAiJDEiOyB0aGVuCj4gCj4gQSBmaXggY291bGQgYmUgdG8gdXNlICJhcHBl
bmQtbWV0YWRhdGEgfCBnemlwIiBmb3IgdGhlIGZpcm13YXJlIGltYWdlcyBhbmQgdGhlbgo+IHVu
cGFjayB0aGUgZmlybXdhcmUgYmVmb3JlIHZhbGlkYXRpbmcgaXQncyBzaWduYXR1cmUgYW5kIG1l
dGFkYXRhLCBlLmcuIHdpdGggdGhlCj4gZm9sbG93aW5nIGNvbW1hbmQgaW4gZnd0b29sLnNoCj4g
Cj4gc291cmNlIC91c3IvYmluL2NvbW1vbi5zaAo+IGlmICEgZ2V0X2ltYWdlICIkMSIgfCBmd3Rv
b2wgLXEgLXMgL3RtcC9zeXN1cGdyYWRlLnVjZXJ0IC07IHRoZW4KPiAKPiBUaGlzIHdvcmtlZCBp
biBteSBxZW11IHRlc3QsIG5vdCB0ZXN0ZWQgb24gYSByZWFsIGhhcmR3YXJlLgo+IAo+IFJhZmHF
giBNacWCZWNraSB3b3JrZWQgcmVjZW50bHkgb24gdGhlIHZhbGlkYXRpb24sIG1heWJlIGhlIGNh
biBzaGFyZSBhbiBvcGluaW9uLgoKTXkgd29yayBkaWRuJ3QgaW52b2x2ZSB0b3VjaGluZyBmd3Rv
b2wgLyBtZXRhZGF0YSBzbyB1bmZvcnR1bmF0ZWx5IEkKY2Fubm90IGhlbHAgd2l0aCB0aGF0LgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
