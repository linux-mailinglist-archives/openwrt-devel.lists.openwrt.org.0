Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE2FCDC02
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 09:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1uHYmbRjZDF4Iu9wAJ/aX5RE+uBTxRr0lZw7NRWzpA=; b=BR9nfsoC3pcAzH
	yIrquy4eQOBWFMkuJVRf2bloTOVFBIOGTDE5AFkkZ+vpqmMu5fPZgYgMkNJxH9OUfXJcZDO5VfrJ0
	eOVB0PjjpX3jyQpogtqI7B7hxe5y2PA8ElowsU/SKhF1h9D7xKBrBJRsmAZkeGQAuz+rhMk+othc6
	uiz9M2yEI7XbMSGmESPjWxLE+xSMg1NL5p7UVHoveBlqQVzuLBqCCVrdrdRLodXNfiknT9uSi2eLG
	uHXgiCoomk317ptYqlrRbNWR7iJW9/dFws0D1TaUpXKpJ8uOLrmLqoFl7paluo9bd1GRPFyEER4UT
	tuZ//Nlj9W5wmRXuez/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHN0l-0007Bs-BH; Mon, 07 Oct 2019 07:00:51 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHN0f-0007BD-H7
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 07:00:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2BC85608313B;
 Mon,  7 Oct 2019 09:00:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ans2I5c_R0TT; Mon,  7 Oct 2019 09:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CF75960F8520;
 Mon,  7 Oct 2019 09:00:37 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id PZcxKOkgTgNe; Mon,  7 Oct 2019 09:00:37 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id AAEBE608313B;
 Mon,  7 Oct 2019 09:00:37 +0200 (CEST)
Date: Mon, 7 Oct 2019 09:00:37 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <1329437938.17128.1570431637616.JavaMail.zimbra@nod.at>
In-Reply-To: <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
References: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
 <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: imx6: bootscript: enable UBI fastmap support
Thread-Index: F+3iMMufxnpwGEGfGuYu+0YB6kK6wg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_000045_713982_19FDA569 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] imx6: bootscript: enable UBI
 fastmap support
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
Cc: Tim Harvey <tharvey@gateworks.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S29lbiwKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPj4gKwkjIGVuYWJsZSBVQkkg
ZmFzdG1hcCBzdXBwb3J0Cj4+ICsJc2V0ZW52IGJvb3RhcmdzICIke2Jvb3RhcmdzfSB1YmkuZm1f
YXV0b2NvbnZlcnQ9MSIKPj4gICBlbHNlCj4+ICAgCWVjaG8gIkJvb3RpbmcgZnJvbSBibG9jayBk
ZXZpY2UgJHtib290ZGV2fS4uLiIKPj4gICAJc2V0ZW52IGZzbG9hZCAiJHtmc31sb2FkICR7ZHR5
cGV9ICR7ZGlza306MSIKPiAKPiBIaSBUaW0sCj4gCj4gU2hvdWxkbid0IHRoaXMgcGF0Y2ggYWxz
byBlbmFibGUgdGhlIHJlcXVpcmVkIGtlcm5lbCBzeW1ib2w/Cj4gKE1URF9VQklfRkFTVE1BUCkK
PiAKPiBOZXh0IHRvIHRoYXQsIGV2ZW4gaW4ga2VybmVsIDQuMTkgSSdtIHJlYWRpbmcgZm9sbG93
aW5nIHJlZ2FyZGluZyB0aGlzCj4gZmVhdHVyZToKPiAKPiBJbXBvcnRhbnQ6IHRoaXMgZmVhdHVy
ZSBpcyBleHBlcmltZW50YWwgc28gZmFyIGFuZCB0aGUgb24tZmxhc2gg4pSCCj4gZm9ybWF0IGZv
ciBmYXN0bWFwIG1heSBjaGFuZ2UgaW4gdGhlIG5leHQga2VybmVsIHZlcnNpb25zCj4gCj4gCj4g
SGkgUmljaGFyZCwKPiAKPiBBcG9sb2dpZXMgZm9yIGRyYWdnaW5nIHlvdSBpbiBoZXJlLgo+IAo+
IEhvdyBzdGFibGUgaXMgdGhpcyBmYXN0bWFwIGZvcm1hdD8KPiAKPiBXaWxsIGl0IGxlYXZlIEV4
cGVyaW1lbnRhbCBzdGF0ZSBpbiB0aGUgbmVhciBmdXR1cmU/CgpXZWxsLCB0aGUgZm9ybWF0IGl0
c2VsZiBpcyBzdGFibGUuIFdlIG5ldmVyIGhhZCBhIGJ1ZyB3aGljaCByZXF1aXJlZApzdWNoIGEg
Y2hhbmdlLiBTbyBJIGd1ZXNzIHdlIGNhbiBjb25zaWRlciBpdCBhcyBzdGFibGUuCgpTbyB5ZXMs
IGl0IGlzIGhpZ2ggbm9vbiB0byByZW1vdmUgdGhlIHNjYXJ5ICJleHBlcmltZW50YWwgd29yZCIg
ZnJvbQp0aGUgS2NvbmZpZyBkZXNjcmlwdGlvbi4gOikKClRoYXQgc2FpZCwgSSBzdWdnZXN0IGVu
YWJsaW5nIEZhc3RtYXAgb25seSBpZiBhdHRhY2gvYm9vdCB0aW1lIGlzCm1vcmUgaW1wb3J0YW50
IHRoYW4gTkFORCBsaWZldGltZS4KVGhlIGRvd25zaWRlIG9mIEZhc3RtYXAgaXMgdGhhdCBpdCB3
aWxsIHdlYXIgb3V0IHRoZSBmaXJzdCA2NCBibG9ja3MKb2YgeW91ciBOQU5EIGZhc3RlciB0aGFu
IG90aGVyIGJsb2NrcyBhbmQgbm90IGRvaW5nIGEgZnVsbCBzY2FuCnVwb24gYm9vdHVwIG1pZ2h0
IGhpZGUgTkFORCBwcm9ibGVtcyB3aGljaCBjYW4gY2F1c2UgdHJvdWJsZQp3aGVuIGl0IGlzIGFs
cmVhZHkgdG9vIGxhdGUuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
