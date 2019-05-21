Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B611256FF
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 19:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6wtFdpULtaSTqahcR52bMdI2Ato+y8ClkKDcBs6V2k=; b=TbwYhrsBSHdfDu
	MZKNw7BNCsHtPioDYjlEQGApj+I1zM6albOCuGH8nNhMon2d0kDALmxGNPQQB5uV+NKKbagEQnAoG
	HKuPRs8FQjXQPbxi/YzofIcS11/PwJUg/tu2t0m8rDnfMYwfDjzZ4UCEtHncDqAaY35V5AKvFxGbB
	5oe/MkaOwXd4p6+Qy7C0esF8OhhEhtnYZPb/ciTuiofldceS3C1o86E2xhHD3OiHD7XU8ArOCuvrf
	yp/6K62TO57DfyPk534aZBhXkjQfRtgjLoXWS+5yayKDRmpar9guS+pj7KmFD3TqOtCF5UL88oK7J
	6xqkmCMR3sRg5NrZD77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8sx-0004am-4W; Tue, 21 May 2019 17:49:11 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8sp-0004aT-JJ
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 17:49:05 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x4LHinsD017761
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 21 May 2019 19:44:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1558460690; bh=AZsDAyAdZOdvoErvqi2xDaRUEBeQblj+u9IgZCV75xI=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=mW0SH+IkNm0WaC/eqYGUj0LNamxCh3j4AvBp4BrE8iFWs5po90d5XL852E67+VTaT
 fraYhMDErzfrT/rhAqfn8gLmMb8PZkf2MgyAVYojrh+SvUYFsC2fdXPyB/xGLjtc6O
 ExVPrafCQSrlSAbRLCD/lfjwsOyxPBcOzeVdedWo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hT8oj-0005cq-45; Tue, 21 May 2019 19:44:49 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Organization: m
References: <20190520101443.9192-1-bjorn@mork.no>
 <26fb4086-42b5-a102-0bc7-cf17972c2823@allycomm.com>
 <a8c56e6b-bde5-1191-f980-eb5afafa9d1f@allycomm.com>
 <20190521120725.GA4606@meh.true.cz>
Date: Tue, 21 May 2019 19:44:48 +0200
In-Reply-To: <20190521120725.GA4606@meh.true.cz> ("Petr =?utf-8?Q?=C5=A0te?=
 =?utf-8?Q?tiar=22's?= message of
 "Tue, 21 May 2019 14:07:25 +0200")
Message-ID: <87imu366sv.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_104904_149478_28557073 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] upgrade: nand: fix board_name assumtions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org, Matti Laakso <matti.laakso@outlook.com>,
 Jeff Kletsky <lede@allycomm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JpdGVzOgoKPiBKZWZmIEtsZXRza3kgPGxl
ZGVAYWxseWNvbW0uY29tPiBbMjAxOS0wNS0yMCAyMDo0MjoxNl06Cj4KPj4gSGF2aW5nIHNwZW50
IHF1aXRlIGEgYml0IG9mIHRpbWUgdG9kYXkgdGhpbmtpbmcgYWJvdXQgdGhlIGltcGFjdCBvZgo+
PiBib2FyZC1uYW1lIGNoYW5nZXMsIEkgY2FuIHNlZSB1c2UgY2FzZXMgd2hlcmUgdGhlIHJ1bm5p
bmcgc3lzdGVtIGRvZXNuJ3QKPj4ga25vdyBhIHByaW9yaSB3aGF0IHRoZSByYW5nZSBvZiBhY2Nl
cHRhYmxlIHRhci1kaXIgdmFsdWVzIGFyZS4KPgo+IFdlbGwgaXQgbWFrZXMgbWUgd29uZGVyLCB3
aHkgeW91IGp1c3QgZG9uJ3QgZG8gZm9sbG93aW5nOgo+Cj4gIHBsYXRmb3JtX2NoZWNrX2ltYWdl
KCkgeyAKPiAJcmV0dXJuIDAKPiAgfQo+Cj4gQXMgdGhlIGltYWdlIGlzIGFscmVhZHkgY2hlY2tl
ZCB3aXRoIGZ3dG9vbF9jaGVja19pbWFnZSBtZXRhZGF0YSBiYXNlZCBjaGVjawo+IHdoaWNoIHNo
b3VsZCBiZSBwcm9iYWJseSBnb29kIGVub3VnaCBpbiBvcmRlciB0byBsaWZ0IGFueSBvdGhlciBh
ZGRpdGlvbmFsCj4gY2hlY2tzLiBPZiBjb3Vyc2UsIGp1c3QgaW4gY2FzZSB5b3VyIHBsYXRmb3Jt
IGhhcyBlbmFibGVkIG1ldGFkYXRhIGNoZWNraW5nLAo+IHdoaWNoIGluIGNhc2Ugb2YgYXRoNzkg
aXMgdHJ1ZS4KCkRvaCEgQW5kIHRoZSByYW1pcHMgdGFyZ2V0LCB3aGljaCBJJ3ZlIGJlZW4gbWVz
c2luZyB3aXRoIGxvY2FsbHksIGRpZAp0aGF0IGEgbG9uZyB0aW1lIGFnby4gIEkganVzdCBkaWRu
J3Qgbm90aWNlLiAgR3Vlc3MgSSBjYW4ganVzdCBkcm9wIHRoaXMKc2lsZW50bHkgdGhlbi4gIFNv
cnJ5IGFib3V0IHRoZSBub2lzZS4KCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
