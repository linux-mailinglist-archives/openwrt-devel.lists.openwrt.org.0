Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B32D9CB41
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 10:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/20c4wWKR2ipof2rtqbM1FgNNRI2Dh3mhH/Xm5vIrw=; b=qLP6s9XZu0zZh6
	BSK2l3s2VTUmI6KldFbsEq9BYNcGaOnq4mLd6jlmd9m/QMVh5W91nABKSZNPg4YN+qzPOasPltI75
	pSGarEaipSppkUlNw0RtBBPMSAog+TWa4VsbqIkyopZpIWVqH4lZeElXJhbIjY7dPqWLbA8wXnf9I
	yivci8VhoP+Lo76Zk+am7+0FFgcy7s0FvUgjvBM3PjalXd3VyiA1vBergsaIIow1OOD3C24E7k1ZG
	EajFADD+RfvYD14thLqZjkdV57N1JcRV+xQb67nJpRe69pzhhY7IXqF75+1lpflNYM9e2mn4LSD8y
	P1Xmr/sYW9f4IfP/zdzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2A3V-00050t-V9; Mon, 26 Aug 2019 08:08:49 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2A3B-00050O-3e
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 08:08:32 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:342:980f:2886:93ff:fe90:318c])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x7Q88LAe005665
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 26 Aug 2019 10:08:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1566806902; bh=T/YOwj/9/4sIaG+3umhqSK5/CEzxd23TiszjaySIh1E=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=h4wmNhV9uEAB0HyRhXItgLOzfG5nZzYjomuHFDidZMUZexzb3uDhQW+RKXqWr5tgX
 3UrYo81+8nLzvaNzzsdpmSCYrvr2+q0YF6UgsI2fcXH9T1nvkGpxwxjrlN/1WYQqbr
 /Wu58/GjHDsZqX1c6W5JSfJWwEpGe+qc9WtDMkDI=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1i2A2y-0006LC-0h; Mon, 26 Aug 2019 10:08:16 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Paul Spooren <mail@aparcar.org>
Organization: m
References: <0d49237b-8aa8-1792-46c5-d4c360a398f0@aparcar.org>
Date: Mon, 26 Aug 2019 10:08:15 +0200
In-Reply-To: <0d49237b-8aa8-1792-46c5-d4c360a398f0@aparcar.org> (Paul
 Spooren's message of "Sun, 25 Aug 2019 18:08:53 -1000")
Message-ID: <87ef18wdqo.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_010829_494651_3171D0D8 
X-CRM114-Status: UNSURE (   8.55  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC] use Debian like release channel
 identifiers?
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

UGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPiB3cml0ZXM6Cgo+IGFzIDE5LjA3IGlzICpq
dXN0IGFyb3VuZCB0aGUgY29ybmVyKiBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUncyBhCj4gYmV0
dGVyIHdheSBvZiBkaXN0aW5ndWlzaGluZyBiZXR3ZWVuIHZlcnNpb25zLgo+Cj4gUmlnaHQgbm93
LCBJIHNlZSA0IGRpZmZlcmVudCAqY2hhbm5lbHMqIHdoaWNoIHNvbWV3aGF0IG1hdGNoIHRoZQo+
IERlYmlhbiBzdHlsZSwgdGhlcmVmb3JlIGEgcG9zc2libGUgbWFwcGluZzoKPgo+IDE4LjA2Lk4g
LT4gc3RhYmxlCj4gMTkuMDctcmNOIC0+IHRlc3RpbmcKPiAxOS4wNy1TTkFQU0hPVCAtPiB1bnN0
YWJsZQo+IFNOQVBTSE9UIC0+IGV4cGVyaW1lbnRhbAoKVGhpcyBsb29rcyBmaW5lIHJpZ2h0IG5v
dy4gIEJ1dCBzdWNoIG1hcHBpbmdzIHRlbmQgdG8gY29uZnVzZSB1c2VycyBvdmVyCnRpbWUsIHdo
ZW4gInN0YWJsZSIgc3VkZGVubHkgaXMgcmVkZWZpbmVkIHRvIDE5LjA3LjEsIDIyLjA5LjEgZXRj
LiAgQW5kCndoYXQgZG8geW91IGNhbGwgMTguMDYuOTcgd2hlbiAyMi4wOS4xIGlzICJzdGFibGUi
PwoKRGViaWFuIGhhZCBhIGxvbmcgZGlzY3Vzc2lvbiBhYm91dCBkcm9wcGluZyBjb2RlIG5hbWVz
IGluIGZhdm91ciBvZgpyZWxlYXNlIHZlcnNpb25zIHJlY2VudGx5IFNlZToKaHR0cHM6Ly9sd24u
bmV0L0FydGljbGVzLzc5MjY0Ni8KCkkgYW0gbm90IHN1cmUgaWYgdGhleSBoYXZlIHJlYWNoZWQg
YW55IGNvbmNsdXNpb24uICBCdXQgSSBiZWxpZXZlIHdlCnNob3VsZCB0aGluayBhYm91dCB0aGUg
cG9zc2libGUgZHJhd2JhY2tzIGhlcmUgYmVmb3JlIGRlY2lkaW5nIHRvIGNoYW5nZQp0aGUgcmVs
ZWFzZSBuYW1pbmcgeWV0IGFnYWluLiAgSSBmb3Igb25lIHdvdWxkIHByZWZlciBhbnkgc2NoZW1l
IHdoaWNoCmxhc3RlZCBtb3JlIHRoYW4gMiByZWxlYXNlcy4uLi4KCgoKQmrDuHJuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
