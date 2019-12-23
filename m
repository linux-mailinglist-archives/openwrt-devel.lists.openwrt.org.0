Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF14129395
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Dec 2019 10:18:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zTtGPEqOPDmpv5yUCNorAQu3A4iXjVSbca8E2p1a+I=; b=StcG/BGVGMMVsB
	D9rvnp3/PMO8JCbQIROE+W0sr7B4uWwGwrC/Hv/xlQ1pHPLttTTXd/oPGntXIbnFFA1bsJ2iEiHkg
	ej9DOQWbMy1JLS99Izp3eqYdFv8/Y+/ultVYMAU5ONFiJnESsi3IanSy+gd1eYLaXG9HrKgtK4kEe
	JfBJoO2/H29ZRE8KzfACSAhf/9W4FMQ3vUU3q2+Lhq6CUE8Z0tMPbwxLglRuFi2ReXiPZf0dWDKBr
	g9Q+mFlQ/z2YNPXtWTy89aotlFSZRSFXXbSeS2C2A8fdQUoCWluja0TN8ZaUih42auenWuD9gNbUN
	am9OMXxtq2jpeokItI7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJr6-00058v-0a; Mon, 23 Dec 2019 09:18:24 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJqx-00057v-Tm
 for openwrt-devel@lists.openwrt.org; Mon, 23 Dec 2019 09:18:17 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:343:cb43:68e2:39ff:fe1c:1a78])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xBN9HGOA031036
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 23 Dec 2019 10:17:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1577092637; bh=26PFB+j/tP/A/OUTPyyMvc/Jvgh6xpe9o3e4UCMCKeU=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Wh29ekdmq2y3vXIS/PDhJm2+SGCs30yGBeuLGi43qBgDqIDt0yciOPgeOYcWtnawX
 /a5sdnR0NzkHhwWXApToR9nsxnx0Dl/ARpSaJajeppx5669T7oUqcD24lc9z4jfwi7
 Mn8I2QavQwvwYRXUhVk2xReuq6jMwfm88SzlffXs=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1ijJpv-0002RT-6l; Mon, 23 Dec 2019 10:17:11 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Paul Fertser <fercerpav@gmail.com>
Organization: m
References: <20191215172522.26626-1-fercerpav@gmail.com>
 <20191222182057.9805-1-fercerpav@gmail.com>
Date: Mon, 23 Dec 2019 10:17:11 +0100
In-Reply-To: <20191222182057.9805-1-fercerpav@gmail.com> (Paul Fertser's
 message of "Sun, 22 Dec 2019 21:20:57 +0300")
Message-ID: <87fthb4d0o.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_011816_442699_ED67FF7C 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Hauke Mehrtens <hauke@hauke-m.de>,
 Ben Greear <greearb@candelatech.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGF1bCBGZXJ0c2VyIDxmZXJjZXJwYXZAZ21haWwuY29tPiB3cml0ZXM6Cgo+IC0tLSAvZGV2L251
bGwKPiArKysgYi9wYWNrYWdlL2tlcm5lbC9hdGgxMGstY3QvcGF0Y2hlcy85NjAtMDAxMS1hdGgx
MGstbGltaXQtcGNpLWJ1ZmZlci1zaXplLnBhdGNoCj4gQEAgLTAsMCArMSwxMDAgQEAKPiArLS0t
IGEvYXRoMTBrLTQuMTkvcGNpLmMKPiArKysrIGIvYXRoMTBrLTQuMTkvcGNpLmMKPiArQEAgLTE0
Miw3ICsxNDIsMTEgQEAgc3RhdGljIHN0cnVjdCBjZV9hdHRyIGhvc3RfY2VfY29uZmlnX3dsYQo+
ICsgCQkuZmxhZ3MgPSBDRV9BVFRSX0ZMQUdTLAo+ICsgCQkuc3JjX25lbnRyaWVzID0gMCwKPiAr
IAkJLnNyY19zel9tYXggPSAyMDQ4LAo+ICsrI2lmbmRlZiBDT05GSUdfQVRIMTBLX1NNQUxMQlVG
RkVSUwo+ICsgCQkuZGVzdF9uZW50cmllcyA9IDUxMiwKPiArKyNlbHNlCj4gKysJCS5kZXN0X25l
bnRyaWVzID0gMTI4LAo+ICsrI2VuZGlmCj4gKyAJCS5yZWN2X2NiID0gYXRoMTBrX3BjaV9odHRf
aHRjX3J4X2NiLAo+ICsgCX0sCj4gKyAKCldoeSBub3QgcmVwbGFjZSB0aGUgbWFnaWMgbnVtYmVy
cyB3aXRoIGEgbWFjcm8/ICBUaGVuIHlvdSBjb3VsZCBnZXQgYXdheQp3aXRoICpvbmUqICJpZiBj
b25maWd4IHRoZW4gdGhpcyBlbHNlIHRoYXQiPyAgQW5kIHByZWZlcmFibHkgcHV0IGl0IGluIGEK
aGVhZGVyIGZpbGUuCgpPciBtYXliZSB0aGVzZSB0aGluZ3MgZXZlbiBjb3VsZCBiZSBtYWRlIHJ1
bnRpbWUgY29uZmlndXJhYmxlPyAgQnVmZmVycwpvZiB0aGlzIHNpemUgcmVhbGx5IHNob3VsZCBi
ZSBJTUhPLCBhcyB0aGVyZSBpcyBubyB3YXkgdG8gbWFrZSBvbmUgc2l6ZQpmaXQgYWxsLiAgQXMg
ZGVtb25zdHJhdGVkLi4uCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
