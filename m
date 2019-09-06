Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DE2AB647
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 12:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHLT7IM5Nc7cLd7T50wuJZUYMCK4+bg2PQ4Ns47vI6A=; b=ihV0ryo86bW0tTT4vHbOn7yjfJ
	PMIxyoQ0VdNBeWMMWXW3QO5u9Vu/zQIdGIColGCqGQqO3oxnw76P2SkG8wcksGw1fE8R4q2n1xxkK
	v8LZNxjOQfSqCtOni1TvXjAtpOe0CPra7rQ63SUAMs/mJpqP3hAefmZpPjuTxo/B3/N1/v27PCJlj
	FbgXYeHbOIAvUspcHORWGjohkrtI/zJTQgxHEexXy0H8JtenEVeoWDi70bIpuMe8sj//cZEFMdb8T
	/qrD3+P4kUIGoefX4jcL2b1XDbdbA/IAp0+j5s/hiuEhup0SEEucFBFDUn9LJaqzzdhm5wZyEpZo4
	GmQ6xlPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BkP-0001zz-1D; Fri, 06 Sep 2019 10:45:45 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Bjt-0001Zs-36; Fri, 06 Sep 2019 10:45:14 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:2c6:ea50:dc9c:cbff:fe10:7b5a])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x86Aj20g000974
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 6 Sep 2019 12:45:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1567766702; bh=H9UACTHooc7QS4Y1FWVt1qLAXwJtbBetItxMrzcLgr0=;
 h=From:To:Subject:References:Date:Message-ID:From;
 b=M7jWQg3RHfy1X9vM4nTN/7CDnQF8zLpO5bRsXuCC5IIQjT0c1hdjjAog78QT/bqDx
 4z7uTYJGp/Qq4yqW4dDqic4XAlyj43MuerHY6nBVP6sHk6qchTP/7zmCCi6DZMKghe
 o1O1nH3KTyr1xdt5Ruq56Uy5Y8C3ufoTR4WDhB4Y=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1i6Bjc-0003RK-8i; Fri, 06 Sep 2019 12:44:56 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 openwrt-adm@lists.openwrt.org
Organization: m
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io>
Date: Fri, 06 Sep 2019 12:44:56 +0200
In-Reply-To: <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io> (Jo-Philipp Wich's
 message of "Wed, 4 Sep 2019 11:52:03 +0200")
Message-ID: <87tv9psnyv.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_034513_473561_8774ED66 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiB3cml0ZXM6Cgo+PiBCdWlsZGJvdCBpcyBhbHJl
YWR5IGNydW5jaGluZyB0aGUgaW1hZ2VzIGFuZCBwYWNrYWdlcywgYW5kIHByZXR0eSBtdWNoCj4+
IGFsbCB0YXJnZXRzIGFyZSBncmVlbi4gU28gdGhlcmUgYXJlIG5vIG9idmlvdXMgYnVpbGQgcmVs
YXRlZCBpc3N1ZXMKPj4gcHJldmVudGluZyB0aGUgcmVsZWFzZS4gSSBoYXZlIGFsc28gbm90IG5v
dGljZWQgYW55IGZyYW5jdGljIGRpc2N1c3Npb24KPj4gYWJvdXQgc3BlY2lmaWMgbWFqb3IgYnVn
cyBibG9ja2luZyB0aGUgcmVsZWFzZSwgc28gaXQgbG9va3MgcHJldHR5IGdvb2QKPj4gYXQgdGhl
IG1vbWVudC4KPgo+IHRoZXJlIGFyZSB2YXJpb3VzIEx1Q0kgYnVncyB3aGljaCBuZWVkIHRvIGJl
IGFkZHJlc3NlZCBmaXJzdC4KCklzIHRoZXJlIGEgbGlzdCBvZiByZWxlYXNlIGJsb2NraW5nIGJ1
Z3MgYW55d2hlcmU/ICBJIGd1ZXNzIHdlIGFyZSBtb3JlCnRoYW4gYSBmZXcgd2hvIHdvdWxkIGJl
IGludGVyZXN0ZWQgaW4gbG9va2luZyBhdCB1bmtub3duIGNvZGUsIGlmIHdlCmtuZXcgZml4aW5n
IGl0IHdhcyBjcml0aWNhbCBmb3IgYSByZWxlYXNlLgoKSXQgd291bGQgYWxzbyBiZSBuaWNlIHRv
IGtub3cgdGhlIHJlbGVhc2UgcG9saWN5LiAgSS5lLiwgd2hhdCBtYWtlcyBhCmJ1ZyBjcml0aWNh
bCBlbm91Z2ggdG8gYmxvY2sgdGhlIHJlbGVhc2U/ICBXaGVuIGlzIGEgYnVnZ3kKZmVhdHVyZS9w
bGF0Zm9ybS93aGF0ZXZlciBkcm9wcGVkIGZyb20gdGhlIHJlbGVhc2UgaW5zdGVhZCBvZiB3YWl0
aW5nCmZvciBhIGZpeD8gSSBiZWxpZXZlIERlYmlhbiBoYXMgaGFkIGdyZWF0IHN1Y2Nlc3Mgd2l0
aCBleHBsaWNpdCByZWxlYXNlCmdvYWxzIGFuZCBhYnNvbHV0ZSB0aW1lIGxpbWl0cy4KCkRvY3Vt
ZW50aW5nIHdvcmthcm91bmRzIGlzIGFsc28gYW4gb3B0aW9uLCBlc3BlY2lhbGx5IGZvciBvcHRp
b25hbApmZWF0dXJlcyBpbiByZWxlYXNlIGNhbmRpZGF0ZXMuICBJIGNhbiB1bmRlcnN0YW5kIHRo
YXQgbWFqb3IgTHVDSQpicmVha2FnZSBzdGlsbCBpcyBjb25zaWRlcmVkIHVuYWNjZXB0YWJsZSwg
YnV0IEkgY2FuJ3QgcmVhbGx5IGltYWdpbmUKdGhhdCB0aGVyZSBhcmUgdGhhdCBsb3RzIG9mIHN1
Y2ggYnVncz8KCkFuZCBkb2N1bWVudGluZyBrbm93biBpc3N1ZXMgaW4gYSByZWxlYXNlIGNhbmRp
ZGF0ZSB3aWxsIGF0dHJhY3QgZXZlbgptb3JlIGF0dGVudGlvbiB0byBidWcgZml4aW5nIGZvciB0
aGUgZmluYWwgcmVsZWFzZS4gIEl0J3MgYSB3aW4td2luLgoKCkJqw7hybgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
