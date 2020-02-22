Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348A0168DBB
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 09:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RY+nQ5Zj9Rseu00cZPzIQKacmeJ43HUU59vFt984GMw=; b=BOPZD4h+Mzbtjd
	0w4o8F8plCH+BbecihonzH/4OOBDTQ1sIgdtBjOylP7NtF8hfkg2lEIVqBvNc1h8GWLYNEz7SDYYg
	keuNj98nzjBeFZbHITLtw1zNwcVv2tAumNUdvMy8ax0nuSvypSH4TmPgbZFcTd2DUnjn9OLH4/ejG
	tcZiZA7U6hWi8dOBuvpVY9ZQ6cR3cdJ3zqPua9FolT6VHXCgZZJmUQNSevb2KIkpUJmCvUhqJAqsV
	3xCkm+TrtszkaTkiUZcR/PsA/EiuMYfIgVlcsfZ+abeqNqC2AGSLDtK1+ph6wFkX1gzWq37zTWu5I
	l8pRYrAGheAPmlt4qn0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5QYO-0004By-Ok; Sat, 22 Feb 2020 08:54:28 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5QYF-0004Ba-21
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 08:54:21 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id EDF124745D73;
 Sat, 22 Feb 2020 09:54:03 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id ifY4r92sNECa; Sat, 22 Feb 2020 09:54:03 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 4425C4745D75;
 Sat, 22 Feb 2020 09:54:03 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 4425C4745D75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1582361643;
 bh=8ZUgi6RZ3thGa3VUaztwS4kKjsiVoOvie3Ojh/Y8KFk=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=HLznt8xBe5mxJOmC6JwByIZ2a+CJ11hCjZ6XuPVu1gFfIxn9tAWQRV+Cnwcg1LQOa
 hqSjJvcx7cHX6qLbCByjP2EOaRN5K6M85bcrNSnI92fEuqtmS9zuLuFriWwzkTOrUW
 Np8mNoacgS2V2Lnvr0dW0FCvD5cAV2FXBaKqJcDM=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id JlsYjmIsufxP; Sat, 22 Feb 2020 09:54:03 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:c8cd:6e8e:8b92:ac96] (unknown
 [IPv6:2001:67c:21bc:24:c8cd:6e8e:8b92:ac96])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 917744745D72;
 Sat, 22 Feb 2020 09:54:02 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200220095626.24906-1-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <ae942e67-f207-0f41-b551-90df926c55ef@linux-ipv6.be>
Date: Sat, 22 Feb 2020 10:54:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220095626.24906-1-ynezz@true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_005419_528803_BC7428DD 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] ppp: activate PIE ASLR by default
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

T24gMjAvMDIvMjAyMCAxMTo1NiwgUGV0ciDFoHRldGlhciB3cm90ZToKPiBUaGlzIGFjdGl2YXRl
cyBQSUUgQVNMUiBzdXBwb3J0IGJ5IGRlZmF1bHQgd2hlbiB0aGUgcmVndWxhciBvcHRpb24gaXMK
PiBzZWxlY3RlZC4KPgpVbmZvcnR1bmF0ZWx5IHRoaXMgc2VlbXMgdG8gYnJlYWsgYnVpbGQgb24g
eDg2LzY0OgoKeDg2XzY0LW9wZW53cnQtbGludXgtbXVzbC1nY2MgLU8yIC1waXBlIC1mbm8tY2Fs
bGVyLXNhdmVzIC1mbm8tcGx0Ci1maG9ub3VyLWNvcHRzIC1Xbm8tZXJyb3I9dW51c2VkLWJ1dC1z
ZXQtdmFyaWFibGUKLVduby1lcnJvcj11bnVzZWQtcmVzdWx0Ci1mZmlsZS1wcmVmaXgtbWFwPS9o
b21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL2J1aWxkX2Rpci90YXJnZXQteDg2XzY0
X211c2wvbGludXgteDg2XzY0L3BwcC1kZWZhdWx0L3BwcC0yLjQuOD1wcHAtMi40LjgKLVdmb3Jt
YXQgLVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkgLWZwaWMgLWZzdGFjay1wcm90ZWN0b3Itc3Ryb25n
Ci1EX0ZPUlRJRllfU09VUkNFPTIgLVdsLC16LG5vdyAtV2wsLXoscmVscm8gLWZmdW5jdGlvbi1z
ZWN0aW9ucwotZmRhdGEtc2VjdGlvbnMgLWZsdG8gLURIQVZFX1BBVEhTX0ggLURIQVZFX01NQVAg
LUkuLi9pbmNsdWRlCictRERFU1RESVI9Ii91c3IiJyAtRENIQVBNUz0xIC1ETVBQRT0xIC1ESEFT
X1NIQURPVyAtREhBVkVfQ1JZUFRfSD0xCi1EVVNFX0NSWVBUPTEgLURQTFVHSU4gLURQUFBfRklM
VEVSIC1EUFBQX1BSRUNPTVBJTEVEX0ZJTFRFUgotSS9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xF
REUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC91c3IvaW5jbHVkZQotRElO
RVQ2PTEgLURNQVhPQ1RFVFMKLUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9z
dGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvdXNyL2xpYgotTC9ob21lL3N0aWpuL0RldmVs
b3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9saWIKLUwv
aG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90b29sY2hhaW4t
eDg2XzY0X2djYy04LjMuMF9tdXNsL3Vzci9saWIKLUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9M
RURFL3NvdXJjZS9zdGFnaW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL2xp
YgotZnBpYwotc3BlY3M9L2hvbWUvc3Rpam4vRGV2ZWxvcG1lbnQvTEVERS9zb3VyY2UvaW5jbHVk
ZS9oYXJkZW5lZC1sZC1waWUuc3BlY3MKLXpub3cgLXpyZWxybyAtV2wsLS1nYy1zZWN0aW9ucyAt
Zmx0byAtZnVzZS1saW5rZXItcGx1Z2luwqAgLVdsLC1FIC1vCnBwcGQgbWFpbi5vIG1hZ2ljLm8g
ZnNtLm8gbGNwLm8gaXBjcC5vIHVwYXAubyBjaGFwLW5ldy5vIG1kNS5vIGNjcC5vCmVjcC5vIGF1
dGgubyBvcHRpb25zLm8gZGVtYW5kLm8gdXRpbHMubyBzeXMtbGludXgubyBpcHhjcC5vIHR0eS5v
IGVhcC5vCmNoYXAtbWQ1Lm8gc2Vzc2lvbi5vIG1kNC5vIGNoYXBfbXMubyBzaGExLm8gcHBwY3J5
cHQubyBwY2FwX3BjYy5vCmlwdjZjcC5vIGV1aTY0Lm/CoCAtbGNyeXB0IC1sZGwKL2hvbWUvc3Rp
am4vRGV2ZWxvcG1lbnQvTEVERS9zb3VyY2Uvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNs
L3Vzci9saWIvbGlicGNhcC5hCi9ob21lL2J1aWxkL29wZW53cnQvc3RhZ2luZ19kaXIvdG9vbGNo
YWluLXg4Nl82NF9nY2MtOC4zLjBfbXVzbC9iaW4vLi4vbGliL2djYy94ODZfNjQtb3BlbndydC1s
aW51eC1tdXNsLzguMy4wLy4uLy4uLy4uLy4uL3g4Nl82NC1vcGVud3J0LWxpbnV4LW11c2wvYmlu
L2xkOgovaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90YXJn
ZXQteDg2XzY0X211c2wvdXNyL2xpYi9saWJwY2FwLmEoYnBmX2ZpbHRlci5jLm8pOgpyZWxvY2F0
aW9uIFJfWDg2XzY0XzMyUyBhZ2FpbnN0IGAucm9kYXRhJyBjYW4gbm90IGJlIHVzZWQgd2hlbiBt
YWtpbmcgYQpQSUUgb2JqZWN0OyByZWNvbXBpbGUgd2l0aCAtZlBJQwovaG9tZS9idWlsZC9vcGVu
d3J0L3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi14ODZfNjRfZ2NjLTguMy4wX211c2wvYmluLy4uL2xp
Yi9nY2MveDg2XzY0LW9wZW53cnQtbGludXgtbXVzbC84LjMuMC8uLi8uLi8uLi8uLi94ODZfNjQt
b3BlbndydC1saW51eC1tdXNsL2Jpbi9sZDoKZmluYWwgbGluayBmYWlsZWQ6IG5vbnJlcHJlc2Vu
dGFibGUgc2VjdGlvbiBvbiBvdXRwdXQKY29sbGVjdDI6IGVycm9yOiBsZCByZXR1cm5lZCAxIGV4
aXQgc3RhdHVzCgpTbyBOQUNLIGZyb20gbWUgdW50aWwgdGhpcyBpcyBmaXhlZC4KClN0aWpuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
