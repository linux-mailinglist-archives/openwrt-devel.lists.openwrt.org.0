Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CCCF98FD
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 19:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmqZkrYftWE6cMMEzEHHBGhCTfUKno++ZYsn/L5fmA0=; b=hWYgeIaYnVYmgR
	/Yr4HYhulLIgpyBCWHBffk8L9sLpkaGvOg3ZhY/z2C+XeNrPLeViw6A+qZ0gde3NrxTiJfXzlw+o0
	1lJhiocT6UG6ZjLxXzfXr1gJRbghDxu8lwJYRObT4NbTnPy7jxHEdNB1S1XvYTWeXSkJqzuOIv+fs
	hm4r6sGal3LngKNk7RLHqWK1xRfAjdw4pZIbYyIbBrblMyGx8PO5kMIWnh10XLBxWUpOT7v4+v7Ce
	pf+BqVhhFpUIYAgAAFH0fayDm+/dq2/jU738HMcSNd8BHu4EHCFWHe3MyISnMd4CRmYHBRuqLI1lj
	6Che+9OkkoHEfg+JEy1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb8i-0005C9-NQ; Tue, 12 Nov 2019 18:43:44 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUb8a-0005Bl-3k
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 18:43:37 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0BE45469CE;
 Tue, 12 Nov 2019 10:43:34 -0800 (PST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <8b9394e2-95c5-60de-0348-646fd6b85995@allycomm.com>
Date: Tue, 12 Nov 2019 10:43:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_104336_151537_B8D1F247 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] fstools: Question: Approach to make
 jffs2reset NAND-aware
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

T25lIG9mIHRoZSBuZXh0IHRoaW5ncyBvbiBteSBsaXN0IGlzIGdldHRpbmcgYGZpcnN0Ym9vdGAg
dG8gd29yayB3aXRoCk5BTkQgKFVCSSkgZmxhc2guCgpBcyByZXBvcnRlZFsxXSwgYGpmZjJyZXNl
dC5jYCBkb2VzIG5vdCBzZWVtIHRvIGNvbnNpZGVyIHRoYXQgdGhlcmUgaXMKYSBVQkkgdm9sdW1l
IGJlaW5nIHVzZWQgZm9yIHRoZSBvdmVybGF5LiBJdCBhcHBlYXJzIHRvIGZhaWwgaW4KIm1hcmtp
bmciIHRoZSBmaWxlIHN5c3RlbSBhcyBuZWVkaW5nIGVyYXN1cmUuCgpyb290QChub25lKTovIyBm
aXJzdGJvb3QKW8KgwqAgMzIuNTMwMjY2XSBqZmZzMnJlc2V0OiBUaGlzIHdpbGwgZXJhc2UgYWxs
IHNldHRpbmdzIGFuZCByZW1vdmUgYW55IAppbnN0YWxsZWQgcGFja2FnZXMuIEFyZSB5b3Ugc3Vy
ZT8gW04veV0KeQpbwqDCoCAzNC45NTgyNTddIGpmZnMycmVzZXQ6IC9kZXYvdWJpMF8xIGlzIG5v
dCBtb3VudGVkClvCoMKgIDM0Ljk2MzE4N10gamZmczJyZXNldDogL2Rldi91YmkwXzEgd2lsbCBi
ZSBlcmFzZWQgb24gbmV4dCBtb3VudApbwqDCoCAzNC45NjkyNDRdIGpmZnMycmVzZXQ6IHdyaXRp
bmcgL2Rldi91YmkwXzEgZmFpbGVkOiBPcGVyYXRpb24gbm90IApwZXJtaXR0ZWQKCldoaWxlIHRo
ZXJlIGFyZSBjb21tYW5kLWxpbmUgd29yay1hcm91bmRzLCB0aGlzIGFsc28gaW1wYWN0cyB0aGUK
ImJ1dHRvbi1wcmVzcyByZXNldCIgZnVuY3Rpb25hbGl0eS4KClRoZSBmYWlsdXJlIGlzIGR1ZSB0
byBhdCBsZWFzdAoKIMKgIHN6ID0gd3JpdGUoZmQsICZkZWFkYzBkZSwgc2l6ZW9mKGRlYWRjMGRl
KSk7Cgp3aGljaCByZXR1cm5zIC0xIHdoZW4gdHJ5aW5nIHRvIHdyaXRlIGRpcmVjdGx5IHRvIE5B
TkQgZmxhc2guCgoKQmVmb3JlIEkgZGl2ZSBpbnRvIGRlYWxpbmcgd2l0aCBVQkkgZnJvbSBDIGNv
ZGUsIHdoYXQgd291bGQgYmUgYQpwcm9qZWN0LXByZWZlcnJlZCB3YXkgdG8gbWFyayBhIFVCSSB2
b2x1bWUgZm9yIGVyYXN1cmUgYXQgbmV4dCBtb3VudD8KCiDCoCAqIFByZXNlbmNlIG9mIGAuZXJh
c2VfdGhpc192b2x1bWVgIGluIHRoZSByb290IG9mIHRoZSBmaWxlIHN5c3RlbT8KIMKgICogU29t
ZSBvdGhlciBtYXJrPwoKCkknbGwgd29yayB0aHJvdWdoIGhvdyB0byBlcmFzZSB0aGUgdm9sdW1l
IHdpdGhvdXQgbG9zaW5nIHRyYWNrIG9mIHRoZQpleGlzdGluZyB3ZWFyLWJhbGFuY2luZyBhbmQg
YmFkLWJsb2NrIG1hbmFnZW1lbnQgZmVhdHVyZXMgb25jZSBJJ3ZlCmdvdCBhIGdvb2Qgd2F5IHRv
IGRldGVjdCB0aGF0IGl0IHNob3VsZCBiZSBkb25lIGF0IG5leHQgbW91bnQsCnByZWZlcmFibHkg
d2l0aG91dCBhICJkb3VibGUgZXJhc2UiIG9jY3VycmluZ1syXS4KCkplZmYKCgoKClsxXSBodHRw
czovL2J1Z3Mub3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD00NjgKIMKg
wqDCoCBodHRwczovL2J1Z3Mub3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19p
ZD0yMTIxCgpbMl0gaHR0cDovL3d3dy5saW51eC1tdGQuaW5mcmFkZWFkLm9yZy9mYXEvdWJpZnMu
aHRtbCNMX3doeV91Ymlmb3JtYXQKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
