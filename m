Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86120564EB
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 10:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr3OhjM2lXUsggYyf2scpDWLt5YXUb9/LjRInyPrEl4=; b=Ml4tpOA31z65Lu
	2vGfZ9fqLGjZPQepI2AQPOL711lO+by3SlHlP73P5U/x33T4gjdlTZwGxYFwa+EGDJcirWUv1nfKl
	26QG62hXmHCeGj1kQRyUhlRsMHbWwMWV5+tYB0w2BLofLXEaLzqqeu3nw6XYgIsPTbnUIrKZmVxQk
	bZOhNu8x+OhlgTiLDjxNdq4nLGyOwTuC0FewUql/uEfSljpX1g3L/6NisNg0FpQlhybe01rtp4x1W
	jMA913KYVq69jHjeihfDGJlriSJ4uEG3UyKGsWxeSaaR16JgxtDRq52J+Zkg+z5uMMcm4fwvKeDBa
	iNuZ/b7mt/RmgLmgKOlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3dz-0005B6-EG; Wed, 26 Jun 2019 08:51:07 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3dl-0005AY-Fk
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 08:50:58 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:308:9b4d:2870:15ff:fe87:c238])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x5Q8opec012889
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 10:50:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1561539051; bh=Wy6Wfo2TXkhzgldSIc+le5CysjIhDZ5CexDyHuBjLnc=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=K93sg7c6+VZeXxkLqgxhR4PKRggZ6m9BccHFySLXiDK/4RZ9GBZ5pARVHdCxbupEu
 YABzvkVYX4SgK2cw31zJLRUWAZ65t1o8oH2flAzk056/OtFRGeRu3BzFz/7+nHJbn4
 f74hgoL1cwySn4A3OxCzSLfGTQ+WN17Z3mqVnc48=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hg3dj-00088I-3Z; Wed, 26 Jun 2019 10:50:51 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Jo-Philipp Wich <jo@mein.io>
Organization: m
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
 <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
 <168b7d66-a94e-2425-00da-9ee7a6cc8e61@wwsnet.net>
 <3ba98caf-8fb1-6d7c-c192-9d8bfb84c395@wwsnet.net>
Date: Wed, 26 Jun 2019 10:50:51 +0200
In-Reply-To: <3ba98caf-8fb1-6d7c-c192-9d8bfb84c395@wwsnet.net> (Jo-Philipp
 Wich's message of "Wed, 26 Jun 2019 06:55:14 +0200")
Message-ID: <877e9820ic.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_015056_724224_151A32AB 
X-CRM114-Status: UNSURE (   6.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Problem with "base" release repositories
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiB3cml0ZXM6Cgo+IHRoZSBiYXNlIHJlcG9zaXRv
cmllcyBoYXZlIGJlZW4gZnVsbHkgcmVzdG9yZWQgYW5kIHNob3VsZCBiZSBzYWZlIHRvIHVzZQo+
IGFnYWluLgoKVGhhbmsgeW91IGZvciBib3RoIGZhc3QgcmVzb2x1dGlvbiBhbmQgdGhlIGNvbnRp
bm91cyBpbmZvIHVwZGF0ZXMuClRoYXQncyBwcmV0dHkgaW1wcmVzc2l2ZSwgYW5kIEkganVzdCBo
YXZlIHRvIHdvbmRlciBob3cgbXVjaCBzbGVlcCB5b3UKZ290IGxhc3QgbmlnaHQgOi0pCgpJTUhP
LCB0aGlzIHdhcyBhIGRlbW9uc3RyYXRpb24gb2YgcHJvZmVzc2lvbmFsIGlzc3VlIGhhbmRsaW5n
IHdpdGggdmVyeQpsaW1pdGVkIHJlc291cmNlcy4gIE9wZW5XcnQgaXMgb2J2aW91c2x5IGluIGdv
b2QgaGFuZHMgdGhlc2UgZGF5cy4KCkEgYmlnIHRoYW5rcyB0byB5b3UgYWxsIQoKCgoKQmrDuHJu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
