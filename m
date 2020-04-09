Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7C61A310D
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 10:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0vKV6F7rmhY/VEWBtoyg8QTr3OcBa6xzavkGfBpNaw=; b=iPcohcXWzXjJ2y
	5c9Jw8Q/SgW0Jb+mHZcen9/n9Hr5bYZJ9zmuQqEqQZbEEVT0Sh8RprUIcTqQQTaOUN9OZfl5R43LP
	DxUGIkVfpA/OPiROWcAnn82Xf8EiWbZHpm1wiBrztbB4igQblGRfKE8kKMaQu6rzyQ37WH2gIJkEb
	EWnzc6B523QlvR9ZniCKTOBkTVMzHYR5rFRr2H00RmM3otfby83wdrELM/0/SkY9siw9m8f2ASmK6
	Dqvkx6QZvnTEUhfh99fULY6Ayw6G1y3EK9O250Fdq1NjnXA7bNj6NnL205HIfxX6u+emAB3ughJkP
	SkhBKYhg4xkUtnE7DuoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMSj9-0002sJ-Bv; Thu, 09 Apr 2020 08:39:59 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSj2-0002rk-2c
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 08:39:54 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id E701A64051;
 Thu,  9 Apr 2020 04:39:45 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=to:from
 :subject:cc:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=sasl; bh=X29Kmswt3NkSK2O3V1kIzvYN+
 BU=; b=b05VqiOltNTAOFwViGxP7+qNaGLOLvvRV8dRU1Mw/kgm3Kaf7VQoCjUcS
 bAVEOQxS0WGPqC4YKdDcbWaEmVQhT2MoBzdO7Lc9zXYXgT4Qu5VSPJ2FFXDldznd
 pJR/GcJVKBdjDu4I4cVLk1U5E0NhewajZhwHuSibnNzOOdhzNY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=to:from:subject
 :cc:message-id:date:mime-version:content-type
 :content-transfer-encoding; q=dns; s=sasl; b=wtxxtHOKvpT+SL8YiW2
 0YH06wU3VKJNRihm7Q1PoRKcuwrhlf1PlOnfcoYTXjO2FzhCk8kaxREZoMOgdx4Z
 I5xMAqQv6DUvoHekCoUtty0JkHORJg+fa8JEJY184/t5ANhGgt+oM1TrQ12u6Wmh
 yxdJCjlJsdV/eFeQ1HX+oZ7s=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id DF86D64050;
 Thu,  9 Apr 2020 04:39:45 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
Received: from [192.168.0.8] (unknown [76.183.130.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 1CF486404F;
 Thu,  9 Apr 2020 04:39:43 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <7c5bacbd-3261-63c0-791c-1291d0d44dd1@pobox.com>
Date: Thu, 9 Apr 2020 03:37:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
Content-Language: en-US
X-Pobox-Relay-ID: A97A6D0C-7A3D-11EA-8809-C28CBED8090B-06139138!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_013952_204150_BCC6D3AC 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Adding CONFIG_SAVE_DEBUG
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
Cc: Daniel Santos <daniel@gsat.us>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJJ20gZGV2ZWxvcGluZyBjb21tZXJjaWFsIGhhcmR3YXJlIHVzaW5nIE9wZW5XUlQs
IHNvIHRoZXJlIGFyZSBhIGxvdCBvZgp0aGluZ3Mgd2UgbmVlZCB0byBiZSBhYmxlIHRvIGRvIHRo
YXQgYW55IGNvbW1lcmNpYWwgcHJvZHVjdCBzaG91bGQgaGF2ZSwKbGlrZSB0byBiZSBhYmxlIHRv
IHNhdmUgZGVidWcgc3ltYm9scyBmb3IgcmVtb3RlIGRlYnVnZ2luZywgZXZlbiB0aG91Z2gKYWxs
IGV4ZWN1dGFibGVzIGluIHRoZSBmaXJtd2FyZSBhcmUgc3RyaXBwZWQuwqAgSW52YXJpYWJseSwg
dGhpbmdzIGJsb3cKdXAgYW5kIHdlIG5lZWQgdG8gYmUgYWJsZSB0byBkZWJ1ZyB0aG9zZS4KClRo
ZSBmaXJzdCBjaGFsbGVuZ2Ugc2VlbSB0byBiZSB0aGF0IHRoZSBzdHJpcHBpbmcgaXMgZG9uZSBw
cmlvciB0bwppbnN0YWxsaW5nLCBzbyB0aGF0IGFjdGlvbiBpcyBub3QgY29ubmVjdGVkIHdpdGgg
dGhlIGxvY2F0aW9uIHRoZSBiaW5hcnkKaXMgZ29pbmcgdG8gZW5kIHVwLsKgIFRoZSBzZWNvbmQg
aXMgdGhhdCB0aGUgd2F5IHBhY2thZ2VzIGFyZSBpbnN0YWxsZWQKdmFyaWVzIC0tIHJhdGhlciB0
aGFuIHVzaW5nIHRoZSBhdXRvdG9vbHMgaW5zdGFsbCB0YXJnZXQsIHNvbWUgYXJlCmNhbGxpbmcg
JChDUCkgdG8gZG8gaXQsIHdoaWNoIGlzbid0IHNvIGVhc3kgdG8gaG9vay4KCkdpdmVuIHRoaXMs
IHdoYXQgd291bGQgYmUgYSBnb29kIHdheSB0byBnZXQgZGVidWcgc3ltYm9scyBmb3IKZXZlcnl0
aGluZz/CoCBNYXliZSBjbGVhciBTVFJJUCBhbmQgUlNUUklQLCBidXQgdGhlbiBob29rIHRoZSBw
aGFzZSB0aGF0Cmluc3RhbGxzIHBhY2thZ2VzIGludG8gcm9vdGZzIGFuZCBzdHJpcCB0aGVtIHRo
ZXJlP8KgIElmIHNvLCBhcmUgd2UKc2F2aW5nIGRhdGEgYW55d2hlcmUgaW4gdGhlIHBhY2thZ2Ug
YnVpbGRzIHRoYXQgc2F5IHdoaWNoIGFyZSBiaW5hcmllcwphbmQgd2hpY2ggYXJlbid0P8KgIEkg
a25vdyB0aGF0J3MgZWFzeSBlbm91Z2ggdG8gc25pZmYsIGJ1dCBJIHdvdWxkCnJhdGhlciBhIHBh
Y2thZ2Ugc2F5IGhvdyBlYWNoIGZpbGUgc2hvdWxkIGJlIHRyZWF0ZWQuCgpBbnkgZ3VpZGFuY2Ug
YXBwcmVjaWF0ZWQhIQoKVGhhbmtzLApEYW5pZWwKClBTOiBJJ20gd29ya2luZyB3aXRoIEdsb2Jh
bCBTYXRlbGxpdGUgRW5naW5lZXJpbmcgdGhlc2UgZGF5cywgYnV0IEknbQpzdWJzY3JpYmVkIHRv
IGFsbCBvZiBteSBtYWlsaW5nIGxpc3RzIG9uIG15IHBlcnNvbmFsIGFjY291bnQuCgpQUFM6IElu
IDIwMTgsIHRoZXkgc2VudCBPcGVuV1JUIGludG8gc3BhY2Ugb24gYSBCbHVlIE9yaWdpbiByb2Nr
ZXQgYXMKcGFydCBvZiBhIHBpbG90IHByb2dyYW0hIDopCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
