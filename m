Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E8A1B4A44
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 18:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vc3efVpKehcm5uyEwXNpp9e0TtWR6Fon5WSrAdshXlU=; b=hy+SnQnzGmOciV
	zabIIqUvIPgnlSjKR2I6uFb+yUL2uguhqWA9rUr2yiLBxzNnOnj0r6bfm4WAqip3jPNZ+6HUThIdA
	rehJVSPcKNXwbFgaWS6EZkBmwTcprnEhVz2eJduLu/BUMJbjciAM3B1yQEpInjgSzXmSDHC9Korx0
	bkmZMH6PdG/Jc+klqR0T/3TLZXAEbWyXMyeLQ0Ojw1itk2ISygaGFhsCp5OsQGSZrAPIscInHioQs
	wTVf5iN1Anib4FDALit3nOkno8GGG7Z15/N/186OeOeJVoLCYjGyGaqqwEYKfdv3PxK6PsIwibqKY
	dj3O2AajiDTvDDZTjJPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRI8E-0000if-Br; Wed, 22 Apr 2020 16:21:50 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRI7F-0008FL-Mp
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 16:20:54 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03MGKbW4028888
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Apr 2020 10:20:37 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <590b25df-be6e-471c-8cfc-199927083edf@iki.fi>
Date: Wed, 22 Apr 2020 10:20:37 -0600
Message-Id: <D9FF819F-8BCA-4ACC-B826-CA8DCCEA6BD2@redfish-solutions.com>
References: <1B1C9093-5094-47C3-8578-FCCB2E5DE753@redfish-solutions.com>
 <590b25df-be6e-471c-8cfc-199927083edf@iki.fi>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_092049_846533_CDF1BF4D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Can't build x86_64 because of
 ntf_reject_ipv4.ko missing
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

Cgo+IE9uIEFwciAyMCwgMjAyMCwgYXQgMTA6NTggUE0sIEhhbm51IE55bWFuIDxoYW5udS5ueW1h
bkBpa2kuZmk+IHdyb3RlOgo+IAo+IFtzbmlwXQo+IAo+IFJlZ2FyZGluZyBJUHY2IE5BVCwgeW91
IHN0dW1ibGVkIGludG8gYSBrZXJuZWwgNS40IGlzc3VlIG9yaWdpbmFsbHkgcmVwb3J0ZWQgaW4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAyMC1G
ZWJydWFyeS8wMjE5MjkuaHRtbAo+IAo+IEJ1ZyByZXBvcnQ6IGh0dHBzOi8vYnVncy5vcGVud3J0
Lm9yZy9pbmRleC5waHA/ZG89ZGV0YWlscyZ0YXNrX2lkPTI5MjQKPiAKPiBUaGF0IHNob3VsZCBo
YXZlIGJlZW4gZml4ZWQgeWVzdGVyZGF5IGJ5Cj4gaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9
b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7aD0yOWE0NThiMGNhZTM0MzViY2U0MTEz
NmVlM2I0MTMyYjQxMDNmZmFlCj4gCj4gSGF2ZSB5b3UgdXBkYXRlZCB5b3VyIHNvdXJjZSByZXBv
Pwo+IAo+IChUaGF0IGlzc3VlIHdhcyBub3QgZGV0ZWN0ZWQgYnkgdGhlIGJ1aWxkYm90LCBhcyBp
dCB3YXMgYSBmaWxlIGNsYXNoIGF0IHBhY2thZ2UgaW5zdGFsbGF0aW9uLCBub3QgYW4gYWN0dWFs
IGNvbXBpbGF0aW9uIGVycm9yIG9mIHRoZSBwYWNrYWdlIGl0c2VsZi4pCj4gCj4gCj4gQnV0IG5v
IGlkZWEgd2h5IHRoYXQgaXB2NiBOQVQgdGhpbmcgd291bGQgaGF2ZSBjYXVzZWQgeW91ciBvcmln
aW5hbCBpdGVtIG9mICJudGZfcmVqZWN0X2lwdjQua28gbWlzc2luZyLigKYKPiAKPiAKCgpJIHRo
aW5rIHRoZSBpc3N1ZXMgYXJlIHVucmVsYXRlZC4gIEkgcGlja2VkIHVwIHRoZSBmaXggYW5kIHRo
YXQgaXNzdWUgaXMgcmVzb2x2ZWQsIGJ1dCBzdGlsbCBzZWVpbmcgdGhlIG5mdF9yZWplY3RfaXB2
NC5rbyBpc3N1ZeKApgoKLVBoaWxpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
