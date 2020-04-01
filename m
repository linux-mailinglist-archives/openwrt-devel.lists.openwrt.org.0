Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878E919AD08
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 15:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ0jcC48EFGqUCPIX8oIcn1DwNiz7Xj8VC6sr+ZTxGs=; b=bb3EYlpSewqKmI
	HHdH0ztVWwI4918jMy9kLzW7VyaE2ohREXaci0IK9eDwiduJVzg1DAVS3eekVe0MvxNNqcRp8n8g8
	yHSreX/myC9xZzwl+2iXC/WAjZstksrcrQziR8+rR8UJXb9XYc7OVAMU0TyjuCjndbZ92LWtwiO30
	E0ifI+6RNRbeN1pAltbIDXA2VXr2P1CGVbFEseiesGBMQvcbnpNBj86lRC/z58iaAYqshSyQ9iVww
	bDfcO1QLPaDQ5LDBDp3+V+XFS64XOp25DePtpahPfWndY0IEordlk4eiQBzM8KUkA7GLgXx+Zevao
	qzNwkMXaLOFyXdJ539iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdf7-0005S9-F6; Wed, 01 Apr 2020 13:44:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdep-0005RI-Vo
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 13:43:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id w10so102807wrm.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 06:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wfm276DynFgnsL4wkpbCQcSzHR+NEL8a4iL2a78bDOc=;
 b=AJ0uTgYGoavz8lQbn0NT/PlpgIu4wvbOGNboGexQ8dFy2egiuDCG5uNhQ+mtQpaPVK
 HwzTfpKXaP6rxRbDf8GJ46yG8AK9UvnO7nS1rVRZg0H+dXFrbjAggKgKjtjEKL3bP6Ss
 fnMsIaeyqr277ZjnqIz6T/ThNR4RFzORjMp5XdzOqJH9MEAJpFAj/VDx0S873mxG/G9w
 wvS7dpTpZoOV4jekWYFanKQ6qRmT90wusSI/EG/lLEPutfLfqXWPPnUGSESfTNqAmsKX
 zR3wdY8qiS5oA58D0C9te82wus67nQRTV3fysWjgzG6HEGrffd0tbFwbhbgZC7iPR8j4
 SIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wfm276DynFgnsL4wkpbCQcSzHR+NEL8a4iL2a78bDOc=;
 b=JiS4PIqHOZkgC3Cij3tJH6WhrAUIOvL9RnACSb+3lyyh8gUO4x7axg1KERj+5njp0Q
 sUgLUDNBFcWNjyc1znnX3Y09vjcXLYQEwvXcblO2IKcaJ6yJVaKJ569oBL9HWut1J7yz
 ZJ1Hh2sOB4NghnfnQNeKQ3/Gz8IUQDtyLOr+Kl36egAi4Y18uyRGyk04pL7Qi/EEgead
 y8pZ+5idufaKDXHjI5uuyInl4ZPrb3Nqnwmb8+67rdAYhNwtHy5mXWUp2jFopb+GKQBZ
 jh1ppmiCTwY4NjSDSXv+0pgaiXnKBpdWLVImmuX+hDYLfaAFo3MiBzv3s0+EA3Uh4AXw
 TGEA==
X-Gm-Message-State: ANhLgQ0IRyb+ycKGuk3L60x6yd180ijk+B8HXJOmPmPN86ixq8ttnrZt
 46uNLJ/I22mmy1i9MNrF168=
X-Google-Smtp-Source: ADFU+vvVLp4BgKRLw7Hsh8zqjLhhrihR17nQL/4gj0ykDCwBfb17yrgDo7Qb4QJERWPWzAVXBVevaA==
X-Received: by 2002:adf:83c4:: with SMTP id 62mr27641403wre.105.1585748629795; 
 Wed, 01 Apr 2020 06:43:49 -0700 (PDT)
Received: from debian64.daheim (p5B0D7F77.dip0.t-ipconnect.de. [91.13.127.119])
 by smtp.gmail.com with ESMTPSA id s131sm2814500wmf.35.2020.04.01.06.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 06:43:48 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64 with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1jJdef-0006aU-Um; Wed, 01 Apr 2020 15:43:41 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Date: Wed, 01 Apr 2020 15:43:40 +0200
Message-ID: <18882612.h8XCQiH2nZ@debian64>
In-Reply-To: <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl>
References: <20200331092158.5787-1-ynezz@true.cz>
 <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_064352_053088_147041EE 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Cc: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkbmVzZGF5LCAxIEFwcmlsIDIwMjAgMTU6MTc6MzEgQ0VTVCBUb21hc3ogTWFjaWVqIE5v
d2FrIHdyb3RlOgo+IFcgZG5pdSAzMS4wMy4yMDIwIG8gMTE6MjEsIFBldHIgxaB0ZXRpYXIgcGlz
emU6Cj4gPiBBcm1hZGEgMzcwIGFuZCBUZWdyYTIgcHJvY2Vzc29ycyBoYXZlIG9ubHkgMTYgZG91
YmxlLXByZWNpc2lvbgo+ID4gcmVnaXN0ZXJzLiBUaGUgY2hhbmdlIGludHJvZHVjZWQgYnkgY29t
bWl0IDhkY2MxMDg3NjAyZSAoInRvb2xjaGFpbjoKPiA+IEFSTTogRml4IHRvb2xjaGFpbiBjb21w
aWxhdGlvbiBmb3IgZ2NjIDgueCIpIHN3aXRjaGVkIGFjY2lkZW50YWxseSB0aGUKPiA+IHRvb2xj
aGFpbiBmb3IgbXZlYnUgY29ydGV4YTkgc3VidGFyZ2V0IHRvIGNwdSB0eXBlIHdpdGggMzIKPiA+
IGRvdWJsZS1wcmVjaXNpb24gcmVnaXN0ZXJzLgo+ID4gCj4gPiBUaGlzIHN0ZW1zIGZyb20gZ2Nj
IGRlZmF1bHRzIHdoaWNoIGFzc3VtZSAidmZwdjMtZDMyIiBpZiBvbmx5ICJ2ZnB2MyIgYXMKPiA+
IG1mcHUgaXMgc3BlY2lmaWVkLiBUaGF0IGNoYW5nZSByZXN1bHRlZCBpbiB1bnVzYWJsZSBpbWFn
ZSwgaW4gd2hpY2gKPiA+IGtlcm5lbCB3aWxsIGtpbGwgdXNlcnNwYWNlIGFzIHNvb24gYXMgaXQg
Y2F1c2luZyAiSWxsZWdhbCBpbnN0cnVjdGlvbiIuCj4gPiAKPiA+IEluIG9yZGVyIHRvIGZpeCB0
aG9zZSBpc3N1ZXMgVG9tYXMgaW4gY29tbWl0IDJkNjFmODgyMWM3YyAoIm12ZWJ1Ogo+ID4gY29y
dGV4YTk6IGNvcnJlY3QgY3B1IHN1YnR5cGUiKSBhbmQgY29tbWl0IDQzZDFkODg1MTA2MiAoInRl
Z3JhOiBjb3JyZWN0Cj4gPiBjcHUgc3VidHlwZSIpIGNoYW5nZWQgdGhlIENQVSBzdWJ0eXBlIHRv
IGV4cGxpY2l0IHZmcHYzLWQxNiB3aGljaCBmaXhlZAo+ID4gdGhlIGFib3ZlIG1lbnRpb25lZCBp
c3N1ZSwgYnV0IG9uIHRoZSBvdGhlciBlbmQgaXQgaGFzIHJlc3VsdGVkIGluIHRoZQo+ID4gbmVl
ZCBvZiBidWlsZGluZyBwYWNrYWdlcyBmb3IgdGhpcyBuZXcgQ1BVIHN1YnR5cGUgd2hpY2ggaXMg
bm90IHdhbnRlZAo+ID4gZHVlIHRvIHRoZSBpbmNyZWFzZWQgaW5mcmFzdHJ1Y3R1cmUgY29zdHMs
IGxpa2UgZGlzayBzcGFjZSBhbmQKPiA+IGFkZGl0aW9uYWwgYnVpbGQgdGltZSB3aGljaCBpcyBo
dWdlIGZvciBwYWNrYWdlcyBmZWVkLgo+ID4gCj4gPiBTbyBsZXRzIGp1c3QgdGFrZSBhIHN0ZXAg
YmFjayBhbmQgbWFrZSB0aGUgdmZwMy1kMTYgZXhwbGljaXQgYWdhaW4uClsuLi5dCj4gPiAtLS0K
PiA+ICBpbmNsdWRlL3RhcmdldC5tayAgICAgICAgICAgICAgICAgICAgIHwgMyArKysKPiA+ICB0
YXJnZXQvbGludXgvbXZlYnUvY29ydGV4YTkvdGFyZ2V0Lm1rIHwgMiArLQo+ID4gIHRhcmdldC9s
aW51eC90ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgfCAyICstCj4gPiAgMyBmaWxlcyBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL3RhcmdldC5tayBiL2luY2x1ZGUvdGFyZ2V0Lm1rCj4gPiBpbmRleCA5YmQ0YzE0OTM2
YzEuLjk0ZWExYTllMDAwMSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvdGFyZ2V0Lm1rCj4gPiAr
KysgYi9pbmNsdWRlL3RhcmdldC5tawo+ID4gQEAgLTE3OSw2ICsxNzksOSBAQCBpZmVxICgkKERV
TVApLDEpCj4gPiAgICBlbmRpZgo+ID4gICAgaWZuZXEgKCQoZmluZHN0cmluZyBhcm0sJChBUkNI
KSksKQo+ID4gICAgICBDUFVfVFlQRSA/PSB4c2NhbGUKPiA+ICsgICAgaWZlcSAoJChDT05GSUdf
U09GVF9GTE9BVCksKQo+ID4gKyAgICAgIENQVV9DRkxBR1NfdmZwdjMgPSAtbWZwdT12ZnB2My1k
MTYKPiA+ICsgICAgZW5kaWYKClRoZSBxdWVzdGlvbiBJJ20gcG9uZGVyaW5nIGlzOiBEbyB5b3Ug
cmVhbGx5IHdhbnQgdG8gbWFpbnRhaW4gdGhpcyBzcGVjaWZjIG1hcHMKZm9yIHRoaXMgKG9ubHkg
dGhpcyBhcmNoKSBvciBub3Q/IEJlY2F1c2UgSSBkbyB0aGluayB0aGlzIHdpbGwgY3JlZXAgdXAg
c29vbmVyIG9yCmxhdGVyIGFnYWluLiBTbyB3ZSBjb3VsZCBhbHNvIGRlZnVzZSB0aGlzIGEgYml0
IGJ5IHJlcGxhY2luZyB0aGF0IG1vbmljZXIgInZmcHYzIgooYXMgdGhpcyBpcyBhIGdjYy9iaW51
dGlscyB0aGluZyBhbmQgbm90IHVuZGVyIG91ciBjb250cm9sKSB3aXRoIHNvbWV0aGluZyAKImNs
ZWFybHkgZnJvbSBPcGVuV3J0Ii4gbGlrZSBDUFVfQ0ZMQUdTX2ZwdSA9IC1tZnB1PXZmcHYzLWQx
NiAoaWYgdGhhdCBkb2Vzbid0CmNsYXNoIHdpdGggc29tZXRoaW5nIGVsc2UpLgoKQnV0IHRoZW4g
YWdhaW4sIEknbSBub3QgaGVyZSB0byB0ZWxsIHlvdSB3aGF0IHRvIGRvLiBJZiB5b3Ugd2FudCB5
b3VyIHBhdGNoIGFzLWlzCnRoZW4gZ28gZm9yIGl0ISA6RAoKQ2hlZXJzLApDaHJpc3RpYW4KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
