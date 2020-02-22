Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF88168E03
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 10:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vCfG+vxTvydeY2BWeGWtR2R4Gz+N0ZPzzFVfzoQc8o=; b=feBtiIGWls9JFq
	gpMFNWtaZ9IWRc2DJIKZvRf6P1Qle85Kfg/nPFa4j/+7enHGYlQS4gFNb9dwmKsqztAkbJT/yuqlH
	E9prrKcxDmrEXncC/vOPQMUNR0UgK8+sIp/i35UP8Ih1FsaCRHqIjg9u8Bi2K4r/VBAJTdRXuO13l
	t6egdUlqIyK5RAZX1gJRJ9IfTfRQWBSxs0Oy3Lwp2UOYr+h3le2aq6RfrRt756cse2KFR8EJPXunA
	YFZb+mqItwVNEpjNFJWSinwGxGnqCFUCsfu3j8lE25ii/sXlbRv+kpnu9xLuKEdJAW5RiDIcJfbdt
	RooyBeobeyAkX0nT79Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5QzZ-0007W3-Ks; Sat, 22 Feb 2020 09:22:33 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5QzO-0007Vd-K3
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 09:22:24 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id AC4F34709AEE;
 Sat, 22 Feb 2020 10:22:10 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id NppWP9TTRxCY; Sat, 22 Feb 2020 10:22:10 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 1C2664745D6E;
 Sat, 22 Feb 2020 10:22:10 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 1C2664745D6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1582363330;
 bh=Vv3KROqoeuhq42hLJd9Zz/zIymtlc/PSc3z3BNrWpC8=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=a2/kbUjNCcZmOse6E4HifO37VqaFjPVcUCEdBpIbFZFQEBHSxahmw+P1mM/qnXX7l
 /5z0OA2Vu5DayNd5g0rFCHUyKXUsCLtAz2rpjOI1rDzVczUYlCI3v5THr7NiYD3yWC
 W8JMys2ire+WnVd942wF3WBJvxOK+MOogNqiyPdo=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 57wPNXgOxPwk; Sat, 22 Feb 2020 10:22:10 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:c8cd:6e8e:8b92:ac96] (unknown
 [IPv6:2001:67c:21bc:24:c8cd:6e8e:8b92:ac96])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 8CC994709AEE;
 Sat, 22 Feb 2020 10:22:09 +0100 (CET)
To: Felix Fietkau <nbd@nbd.name>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
References: <20200220095626.24906-1-ynezz@true.cz>
 <ae942e67-f207-0f41-b551-90df926c55ef@linux-ipv6.be>
 <fc8fc1a0-0ee9-3727-9344-faf36bcb8920@nbd.name>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <2904e2f4-0df3-2533-436a-aa1169e9093f@linux-ipv6.be>
Date: Sat, 22 Feb 2020 11:22:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <fc8fc1a0-0ee9-3727-9344-faf36bcb8920@nbd.name>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_012223_094227_F52D8E22 
X-CRM114-Status: GOOD (  10.44  )
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

T24gMjIvMDIvMjAyMCAxMToxMCwgRmVsaXggRmlldGthdSB3cm90ZToKPiBPbiAyMDIwLTAyLTIy
IDA5OjU0LCBTdGlqbiBUaW50ZWwgd3JvdGU6Cj4+IE9uIDIwLzAyLzIwMjAgMTE6NTYsIFBldHIg
xaB0ZXRpYXIgd3JvdGU6Cj4+PiBUaGlzIGFjdGl2YXRlcyBQSUUgQVNMUiBzdXBwb3J0IGJ5IGRl
ZmF1bHQgd2hlbiB0aGUgcmVndWxhciBvcHRpb24gaXMKPj4+IHNlbGVjdGVkLgo+Pj4KPj4gVW5m
b3J0dW5hdGVseSB0aGlzIHNlZW1zIHRvIGJyZWFrIGJ1aWxkIG9uIHg4Ni82NDoKPj4KPj4geDg2
XzY0LW9wZW53cnQtbGludXgtbXVzbC1nY2MgLU8yIC1waXBlIC1mbm8tY2FsbGVyLXNhdmVzIC1m
bm8tcGx0Cj4+IC1maG9ub3VyLWNvcHRzIC1Xbm8tZXJyb3I9dW51c2VkLWJ1dC1zZXQtdmFyaWFi
bGUKPj4gLVduby1lcnJvcj11bnVzZWQtcmVzdWx0Cj4+IC1mZmlsZS1wcmVmaXgtbWFwPS9ob21l
L3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL2J1aWxkX2Rpci90YXJnZXQteDg2XzY0X211
c2wvbGludXgteDg2XzY0L3BwcC1kZWZhdWx0L3BwcC0yLjQuOD1wcHAtMi40LjgKPj4gLVdmb3Jt
YXQgLVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkgLWZwaWMgLWZzdGFjay1wcm90ZWN0b3Itc3Ryb25n
Cj4+IC1EX0ZPUlRJRllfU09VUkNFPTIgLVdsLC16LG5vdyAtV2wsLXoscmVscm8gLWZmdW5jdGlv
bi1zZWN0aW9ucwo+PiAtZmRhdGEtc2VjdGlvbnMgLWZsdG8gLURIQVZFX1BBVEhTX0ggLURIQVZF
X01NQVAgLUkuLi9pbmNsdWRlCj4+ICctRERFU1RESVI9Ii91c3IiJyAtRENIQVBNUz0xIC1ETVBQ
RT0xIC1ESEFTX1NIQURPVyAtREhBVkVfQ1JZUFRfSD0xCj4+IC1EVVNFX0NSWVBUPTEgLURQTFVH
SU4gLURQUFBfRklMVEVSIC1EUFBQX1BSRUNPTVBJTEVEX0ZJTFRFUgo+PiAtSS9ob21lL3N0aWpu
L0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC91
c3IvaW5jbHVkZQo+PiAtRElORVQ2PTEgLURNQVhPQ1RFVFMKPj4gLUwvaG9tZS9zdGlqbi9EZXZl
bG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvdXNyL2xp
Ygo+PiAtTC9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3Rh
cmdldC14ODZfNjRfbXVzbC9saWIKPj4gLUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3Nv
dXJjZS9zdGFnaW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL3Vzci9saWIK
Pj4gLUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90b29s
Y2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL2xpYgo+PiAtZnBpYwo+PiAtc3BlY3M9L2hvbWUv
c3Rpam4vRGV2ZWxvcG1lbnQvTEVERS9zb3VyY2UvaW5jbHVkZS9oYXJkZW5lZC1sZC1waWUuc3Bl
Y3MKPj4gLXpub3cgLXpyZWxybyAtV2wsLS1nYy1zZWN0aW9ucyAtZmx0byAtZnVzZS1saW5rZXIt
cGx1Z2luwqAgLVdsLC1FIC1vCj4+IHBwcGQgbWFpbi5vIG1hZ2ljLm8gZnNtLm8gbGNwLm8gaXBj
cC5vIHVwYXAubyBjaGFwLW5ldy5vIG1kNS5vIGNjcC5vCj4+IGVjcC5vIGF1dGgubyBvcHRpb25z
Lm8gZGVtYW5kLm8gdXRpbHMubyBzeXMtbGludXgubyBpcHhjcC5vIHR0eS5vIGVhcC5vCj4+IGNo
YXAtbWQ1Lm8gc2Vzc2lvbi5vIG1kNC5vIGNoYXBfbXMubyBzaGExLm8gcHBwY3J5cHQubyBwY2Fw
X3BjYy5vCj4+IGlwdjZjcC5vIGV1aTY0Lm/CoCAtbGNyeXB0IC1sZGwKPj4gL2hvbWUvc3Rpam4v
RGV2ZWxvcG1lbnQvTEVERS9zb3VyY2Uvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Vz
ci9saWIvbGlicGNhcC5hCj4+IC9ob21lL2J1aWxkL29wZW53cnQvc3RhZ2luZ19kaXIvdG9vbGNo
YWluLXg4Nl82NF9nY2MtOC4zLjBfbXVzbC9iaW4vLi4vbGliL2djYy94ODZfNjQtb3BlbndydC1s
aW51eC1tdXNsLzguMy4wLy4uLy4uLy4uLy4uL3g4Nl82NC1vcGVud3J0LWxpbnV4LW11c2wvYmlu
L2xkOgo+PiAvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90
YXJnZXQteDg2XzY0X211c2wvdXNyL2xpYi9saWJwY2FwLmEoYnBmX2ZpbHRlci5jLm8pOgo+PiBy
ZWxvY2F0aW9uIFJfWDg2XzY0XzMyUyBhZ2FpbnN0IGAucm9kYXRhJyBjYW4gbm90IGJlIHVzZWQg
d2hlbiBtYWtpbmcgYQo+PiBQSUUgb2JqZWN0OyByZWNvbXBpbGUgd2l0aCAtZlBJQwo+PiAvaG9t
ZS9idWlsZC9vcGVud3J0L3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi14ODZfNjRfZ2NjLTguMy4wX211
c2wvYmluLy4uL2xpYi9nY2MveDg2XzY0LW9wZW53cnQtbGludXgtbXVzbC84LjMuMC8uLi8uLi8u
Li8uLi94ODZfNjQtb3BlbndydC1saW51eC1tdXNsL2Jpbi9sZDoKPj4gZmluYWwgbGluayBmYWls
ZWQ6IG5vbnJlcHJlc2VudGFibGUgc2VjdGlvbiBvbiBvdXRwdXQKPj4gY29sbGVjdDI6IGVycm9y
OiBsZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzCj4+Cj4+IFNvIE5BQ0sgZnJvbSBtZSB1bnRpbCB0
aGlzIGlzIGZpeGVkLgo+IFRoaXMgb25lIGNhbiBtb3N0IGxpa2VseSBiZSBmaXhlZCBieSBzZXR0
aW5nIFBLR19BU0xSX1BJRV9SRUdVTEFSOj0xIGluCj4gbGlicGNhcCBhcyB3ZWxsLiBUaGF0IHdh
eSAtZlBJQyBnZXRzIHBhc3NlZCBmb3IgdGhlIHN0YXRpYyBsaWJyYXJ5IGJ1aWxkLgo+CkludGVy
ZXN0aW5nLiBJJ3ZlIGFkZGVkIHRoaXMgaW4gdGhlIGxpYnBjYXAgTWFrZWZpbGUgYW5kIHRoYXQg
c2VlbXMgdG8KZml4IGl0LiBCdXQgSSBhbSBhY3R1YWxseSBidWlsZGluZyB3aXRoIENPTkZJR19Q
S0dfQVNMUl9QSUVfQUxMPXksIHNvCndvdWxkIGFzc3VtZSBpdCB3b3VsZCBlbmFibGUgUElFIGV2
ZW4gaWYgUEtHX0FTTFJfUElFX1JFR1VMQVIgaXMgbm90IHNldAppbiB0aGUgTWFrZWZpbGUuIEFu
eXdheSwgSSdsbCBzZW5kIGEgcGF0Y2ggZm9yIGxpYnBjYXAsIHRoYW5rcyBmb3IgdGhlCnN1Z2dl
c3Rpb24uCgpTdGlqbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
