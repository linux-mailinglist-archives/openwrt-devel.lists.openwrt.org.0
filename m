Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B65F564BF
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 10:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LkXPGD7zDiuk3AUsLnP0SAgA98dx7mSeArDLsp+aNQ=; b=Fr6SBX4jkvQQiA
	aHZWHviBpvM7GFOs+kDgeoVJsaEBen5+3wVvQZ9+rAzj0Ku9M03N9ybN2Q6CZwcod9ZuoRttL2mpj
	w2/nGwnOLMf/H1Qf4aIaSfbHMlLIM4dJIXxW89LKCJeAbunKXroMKWiYLOqZkgQMQNbbgQ9lNJ5QS
	cVmE/2slVWHyc65O3pwT5cdy8HvFDIQyzO9fX/Q9p7nF4zzSmoB8NakrFdzIRhGba2aplr7/ISs2Q
	AXaCZBY1taGZ1DvDcImrC/kJ2LIFuqx2sXLkFqJtBKyCyyu0ZbRWLhla1UO7SdPcxSsWlN4Rimuee
	0GsU8jLRt8Fr2RCwRjow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3T9-0007ey-Sd; Wed, 26 Jun 2019 08:39:56 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3Sr-0007eU-83
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 08:39:39 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:308:9b4d:2870:15ff:fe87:c238])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x5Q8dU4V002827
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 10:39:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1561538371; bh=+wTlu3Mk5Q6iFCKSkPNGBfQ+GCAlZpxijFC43CNop10=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Aa4j6g6wNPdTYd/tn8ua2bU0m9IE3BdW+bqTCOAkyL2LxF9S72vmnzFjQjzdyrANm
 sznIfHrk9fIUPAC9AUx3ti8EUXmcCbnhb7/n08GGXBB2KJF9NNeX4bpuxsGEXIzjN3
 90QLcasqIWxsdewIzRdk0//8WBv/Qx1/YCxUwr8Q=
Received: from bjorn by miraculix.mork.no with local (Exim 4.89)
 (envelope-from <bjorn@mork.no>)
 id 1hg3Sk-00087V-At; Wed, 26 Jun 2019 10:39:30 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Daniel Danzberger <daniel@dd-wrt.com>
Organization: m
References: <20190626081923.16521-1-daniel@dd-wrt.com>
Date: Wed, 26 Jun 2019 10:39:30 +0200
In-Reply-To: <20190626081923.16521-1-daniel@dd-wrt.com> (Daniel Danzberger's
 message of "Wed, 26 Jun 2019 10:19:23 +0200")
Message-ID: <87ef3g2119.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_013937_817946_547E91DA 
X-CRM114-Status: UNSURE (   6.92  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-NV1
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RGFuaWVsIERhbnpiZXJnZXIgPGRhbmllbEBkZC13cnQuY29tPiB3cml0ZXM6Cgo+IFRoZSBBUDc2
MjEtTlYxIGlzIGJhc2ljYWxseSBhbiBBUDc2MjEtMDAxIHdpdGggYWRkaXRpb25hbCBwZXJpcGhl
cmFsczoKPgo+IC0gKzEgRXRoZXJuZXQgUG9ydCAoUE9FOiAxeCBQRCwgMnggUFNFKQo+IC0gMiBT
SU0gc2xvdHMKPiAtIDMgUElDZSBVU0IyLjAgKyAyIHggVUlNIGludGVyZmFjZQo+Cj4gSW5zdGFs
bGF0aW9uOgo+IFNhbWUgYXMgb24gdGhlIEFQNzYyMS0wMDEuIE92ZXJmbGFzaCB3aXRoIHN5c3Vw
Z3JhZGUgLUYuCgpQbGVhc2Ugd3JpdGUgdGhlIGZ1bGwgZGVzY3JpcHRpb24gYW5kIGluc3RydWN0
aW9ucy4gIFlvdSBkb24ndCBoYXZlIHRvCnNhdmUgYW55IHNwYWNlIGhlcmUuICBSZWZlcmVuY2Vz
IGxpa2UgdGhpcyBpcyBoYXJkIHRvIGxvb2sgdXAsIGFuZApjb21wbGV0ZWx5IHVubmVjZXNzYXJ5
LgoKQW5kIHMvUElDZS9QQ0llLwoKCkJqw7hybgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
