Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1261717491B
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 21:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zuaI8w937S6ggHLZXcvQFuxfsaFeeKr0EKCZRIIxBUY=; b=qb/ZbtGlJkRlSB
	wbuwzvN9gA3DuKAbidTxA8yg9aKGJgVcYb8USZhoPUz9eMS6qTWTfgv3z+GYJZLelWQnEAVdmkJEI
	UZ3bruXOx+k+AtV5T1PuDQeikMXLmJO2/yjcPy35G593dqQD9Vy8O2/5iUcJbh/GYicQ/q9JNk2do
	qrnDFVgsvxuxJbBlg3grW+Si8b1cTS6GuMANLEOsh3qWSqM0YyygQc7tAmOdGHahcrATfFdJmuXMC
	YdxEXXvc0MhZ3LPDR8S2JJgouFmy/ydcOw8bWC3Qtw/jc7fqey75yqrMsjafDTs0XTK667W4cBdhV
	IuuIjgYJjG/wkjVpJQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j88Uc-0007jt-RT; Sat, 29 Feb 2020 20:13:46 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j88UT-0007jG-Px
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 20:13:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id AF09D1189
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 22:13:34 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id gAicyFxaNp4a for <openwrt-devel@lists.openwrt.org>;
 Sat, 29 Feb 2020 22:13:34 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 356D32308
 for <openwrt-devel@lists.openwrt.org>; Sat, 29 Feb 2020 22:13:32 +0200 (EET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <c7d334c5-9153-96f2-1e66-dc8878df9ed5@iki.fi>
Date: Sat, 29 Feb 2020 22:13:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101
 Thunderbird/74.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_121338_009657_64ACAED1 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
Subject: [OpenWrt-Devel] Kernel 5.4 testing: module regressions (exfat,
 IPv6 NAT)
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

SSB0ZXN0ZWQgdGhlIGtlcm5lbCA1LjQgc3VwcG9ydCB3aXRoIGlwcTgwNngvUjc4MDAgYW5kIG5v
dGljZWQgdGhhdCBhdCBsZWFzdCAKdHdvIGtlcm5lbCBwYWNrYWdlcyBnZXQgYnJva2VuIHdpdGgg
NS40OgoKKiBleGZhdC1ub2Z1c2U6wqAgZXhGQVQgaXMgaW5jbHVkZWQgaW4gTGludXggNS40IGFz
IGEgZHJpdmVyIGluIHRoZSBzdGFnaW5nIApzZWN0aW9uLiBUaGUgaGVhZGVyIGRlZmluaXRpb25z
IGluIGV4ZmF0LW5vZnVzZSBjb25mbGljdCB3aXRoIHRoZSBvbmVzIAphbHJlYWR5IGluIExpbnV4
IDUuNCBiZSBkZWZhdWx0LiBUaGUgbmV3IGtlcm5lbCBtb2R1bGUgc2hvdWxkIHByb2JhYmx5IGJl
IApwYWNrYWdlZCBpbiBPcGVuV3J0IHdpdGggYSBkZXBuZGVuY3kgdG8gNS40wqAgKGFuZCBleGZh
dC1ub2Z1c2UgZGlzYWJsZWQgaW4gCjUuNCsgYXMgdGhleSBkZWZpbmUgdGhlIHNhbWUga21vZC1m
cy1leGZhdCkKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3N0YWJsZS9saW51eC5naXQvdHJlZS9kcml2ZXJzL3N0YWdpbmcvZXhmYXQ/aD1saW51eC01LjQu
eQoKCiogSVB2NiBOQVQgYnJlYWtzIGNvbXBpbGF0aW9uOsKgIGZhaWxzIGlmIGlwNnRhYmxlcy1t
b2QtbmF0IGFuZCBrbW9kLWlwdC1uYXQ2IAphcmUgaW5jbHVkZWQgaW4gdGhlIGJ1aWxkLiBMaWtl
bHkgbmV0ZmlsdGVyIHJlcXVpcmVzIHNvbWUgbW9kaWZpY2F0aW9ucy4KCkNvbGxlY3RlZCBlcnJv
cnM6CiDCoCogY2hlY2tfZGF0YV9maWxlX2NsYXNoZXM6IFBhY2thZ2Uga21vZC1pcHQtbmF0NiB3
YW50cyB0byBpbnN0YWxsIGZpbGUgCi9PcGVud3J0L3I3ODAwL2J1aWxkX2Rpci90YXJnZXQtYXJt
X2NvcnRleC1hMTUrbmVvbi12ZnB2NF9tdXNsX2VhYmkvcm9vdC1pcHE4MDZ4L2xpYi9tb2R1bGVz
LzUuNC4yMi94dF9NQVNRVUVSQURFLmtvCiDCoMKgwqDCoMKgwqDCoCBCdXQgdGhhdCBmaWxlIGlz
IGFscmVhZHkgcHJvdmlkZWQgYnkgcGFja2FnZcKgICoga21vZC1pcHQtbmF0CiDCoCogb3BrZ19p
bnN0YWxsX2NtZDogQ2Fubm90IGluc3RhbGwgcGFja2FnZSBrbW9kLWlwdC1uYXQ2LgogwqAqIGNo
ZWNrX2RhdGFfZmlsZV9jbGFzaGVzOiBQYWNrYWdlIGttb2QtaXB0LW5hdDYgd2FudHMgdG8gaW5z
dGFsbCBmaWxlIAovT3BlbndydC9yNzgwMC9idWlsZF9kaXIvdGFyZ2V0LWFybV9jb3J0ZXgtYTE1
K25lb24tdmZwdjRfbXVzbF9lYWJpL3Jvb3QtaXBxODA2eC9saWIvbW9kdWxlcy81LjQuMjIveHRf
TUFTUVVFUkFERS5rbwogwqDCoMKgwqDCoMKgwqAgQnV0IHRoYXQgZmlsZSBpcyBhbHJlYWR5IHBy
b3ZpZGVkIGJ5IHBhY2thZ2XCoCAqIGttb2QtaXB0LW5hdAogwqAqIG9wa2dfaW5zdGFsbF9jbWQ6
IENhbm5vdCBpbnN0YWxsIHBhY2thZ2UgaXA2dGFibGVzLW1vZC1uYXQuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
