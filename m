Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDE81502DB
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 09:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQYLGnYmIOxwaKXHk9VnX8El5h9+PWDl1vmI6HPlSEE=; b=kwP0Rubl5vtXz3
	K+971AUFbmIcy+6pp+7CPnr+Q8DwR/c3aVexG1a/DYGAT+5uAPrzs9juojpQyX/Vi5KeJfLlwuYAH
	wqkWLjQR7zXzBSi5ZJamrXmsGI2mDQySwbsD2igOobx9PONbEiVmPecIEmtN352dUFWfdFQ8WPUmc
	aer4UO4BsOJtIufzvzejKsfAJsKrwhWil2J7GnnpdV+U5ypbNgC3JyNuq9QDDBbRHR5bCk2Gk4sro
	PRdCNqjaTquivhJfVNH3VhzIPo7YtQCNqzRATNFlhQo1uty77ioadtphAYaSpYJA7jq0/qa4I04pV
	aheHU+vwGhgnsUi8D2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyXZp-00020c-7x; Mon, 03 Feb 2020 08:59:29 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyXZg-000201-VL
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 08:59:23 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:2cd:e15e:e4fc:6bff:feea:ad23])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 0138xBfi009673
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 3 Feb 2020 09:59:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1580720352; bh=Ek0R7m3r0lLBpZ+Fy0CA4pO8T1y+TaGyUWzTKxHE2/Q=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=PscFfy1yFuncWx27xVbe7mxklqSwRvgSPDxnjgXgJFWdvexpgSD513v9llG/etgmK
 G7sF0yMx0++AFhmLWZ8styVLE2zWzoZagzWwAd+dRZgbN62MiXaD1kGFFOGO565dnG
 G2ShP8GTkSgnL/FX+ArooGswCYCLMJXjqt/v9/IQ=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iyXZS-00005g-Ca; Mon, 03 Feb 2020 09:59:06 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: JORDI PALET MARTINEZ <jordi.palet@consulintel.es>
Organization: m
References: <mailman.28108.1580636942.2486.openwrt-devel@lists.openwrt.org>
Date: Mon, 03 Feb 2020 09:59:06 +0100
In-Reply-To: <mailman.28108.1580636942.2486.openwrt-devel@lists.openwrt.org>
 (JORDI PALET MARTINEZ via openwrt-devel's message of "Sun, 02 Feb 2020
 10:48:40 +0100")
Message-ID: <87pnew2git.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_005921_532658_3932022E 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] support of IETF v6ops draft
 draft-ietf-v6ops-464xlat-optimization
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

Sk9SREkgUEFMRVQgTUFSVElORVogdmlhIG9wZW53cnQtZGV2ZWwgPG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmc+CndyaXRlczoKCj4gV2UgYXJlIHdvcmtpbmcgaW4gYSBwb3NzaWJsZSBv
cHRpbWl6YXRpb24gdG8gNDY0WExBVCwgaW4gb3JkZXIgdG8KPiBzdXBwb3J0IG9sZCBJUHY0LW9u
bHkgZGV2aWNlcyBzdWNoIGFzIFNtYXJ0VFZzLCBTVEJzLCBldGMuLCB3aXRoCj4gNDY0WExBVCwg
YXZvaWRpbmcgZG91YmxlIHRyYW5zbGF0aW9uIChDTEFUIGFuZCBQTEFUKSB3aGVuIHRoZSBjb250
ZW50cwo+IGFyZSBhbHJlYWR5IGR1YWwtc3RhY2tlZCBpbiB0aGUgQ0ROL2NhY2hlcy4KPgo+IFRo
ZSBkb2N1bWVudCBoYXMgcmVjZW50bHkgYmVlbiBhY2NlcHRlZCBhcyB2Nm9wcyBXRyBpdGVtOgo+
Cj4gaHR0cHM6Ly9kYXRhdHJhY2tlci5pZXRmLm9yZy9kb2MvZHJhZnQtaWV0Zi12Nm9wcy00NjR4
bGF0LW9wdGltaXphdGlvbi8/aW5jbHVkZV90ZXh0PTEKPgo+IEkgc3VnZ2VzdCwgaW4gYWRkaXRp
b24gdG8gcmVhZCB0aGUgaW50cm8sIHBvc3NpYmxlIG9wdGltaXphdGlvbiBhbmQKPiBwcm9ibGVt
IHN0YXRlbWVudCAoc2VjdGlvbnMgMSwgMywgNCksIHRvIGNvbmNlbnRyYXRlIGluIHRoZSBzZWN0
aW9uCj4gNS4yLCBhcyBpdCBzZWVtcyB0aGUgYmVzdCBhcHByb2FjaCwgYXMgaXQgZG9lc24ndCBu
ZWVkIGFueSBjaGFuZ2UgaW4KPiB0aGUgb3BlcmF0b3JzIG5laXRoZXIgQ0ROcy9jYWNoZXMsIGlu
ZnJhc3RydWN0dXJlcy4gT25seSByZXF1aXJlcyBhbgo+IGludGVybmFsIENQRSAiY29vcmRpbmF0
aW9uIiBiZXR3ZWVuIHRoZSBDTEFUL05BVCBhbmQgdGhlIEROUyBwcm94eS4KCgpIZWxsbyBKb3Jk
aSEKClRoaXMgZG9lcyBsb29rIGxpa2UgYW4gaW50ZXJlc3RpbmcgYXBwcm9hY2guICBCdXQgSSBk
byB3b3JyeSBhYm91dCB0aGUKbGFjayBvZiAiU2VjdXJpdHkgQ29uc2lkZXJhdGlvbnMiLi4uCgpJ
SVVDLCB5b3UgYXJlIGFkZGluZyBJUHY0IDw9PiBJUHY2IHByb3RvY29sIHRyYW5zbGF0aW9uIHJ1
bGVzIGR5bmFtaWNhbGx5CmJhc2VkIG9uIGZvcndhcmQgRE5TIG5hbWVzIGhhdmluZyBib3RoIEEg
YW5kIEFBQUEgcmVjb3Jkcy4gIFRoaXMgc291bmRzCnZlcnkgcmlza3kgdG8gbWUuIFRoZXJlIGlz
IG5vIHdheSB0byB2YWxpZGF0ZSB0aGUgYXNzb2NpYXRpb24gYmV0d2Vlbgp0aGUgQSBhbmQgQUFB
QSByZWNvcmRzLiAgQWxsIHlvdSBuZWVkIHRvIGRvIHRvIHJlZGlyZWN0IHRyYWZmaWMgZGVzdGlu
ZWQKZm9yIDE5Mi4wLjIuNDIgdG8geW91ciBldmlsIE1JVE0gc2VydmVyIGF0IDIwMDE6ZGI4Ojo0
MiBpcyB0byBjcmVhdGUgYQpGUUROIHdpdGggYm90aCBhZGRyZXNzZXMgYW5kIHByb3Zva2UgYSBj
bGllbnQgdG8gbG9vayB1cCB0aGF0IG5hbWUuICBZb3UKaGF2ZSBub3cgYWRkZWQgYSBydWxlIG1h
cHBpbmcgMTkyLjAuMi40MiB0byAyMDAxOmRiODo6NDIuCgpEeW5hbWljIG1hcHBpbmdzIHNlZW1z
IGltcG9zc2libGUgdG8gbWUgd2l0aG91dCBzb21lIHdheSB0byB2YWxpZGF0ZQp0aGF0IHR3byBh
ZGRyZXNzIHJlY29yZHMgYmVsb25nIHRvIHRoZSBzYW1lIGVudGl0eS4gIFRoaXMgaXMgaGFyZAoo
ImltcG9zc2libGUiKS4KCgoKCkJqw7hybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
