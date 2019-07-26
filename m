Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A167603D
	for <lists+openwrt-devel@lfdr.de>; Fri, 26 Jul 2019 09:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGtbvodtkzARFCOkaOHPTQVAPWxHCqByAJ/n8Uplu44=; b=Zj+yOClr4O2W03
	pEbdxusSK/7SkIbUiBwBb3ofdGwNF2/DJkNYBxi5Cl8llMd8pFCFrKEbqlYb0QFfZUFhZREzvV3Sp
	4WTnGBZgaKpz02OZg1X0lkPHLLBB3RqK60M2BDyP3A7tahFoKw3+hmYlvWdKSw7HkVQz6POWarigA
	k7uKJRZozwgCcT5Qq/3W2fZYSqsJ5lAE6Vq4bW8fWXKerOAj/UrOefYnpcIl3HouR0O3OmIFqDCOw
	MQB2Oij0wwyRwNFnmJNL06UXMwrXaUzpsChGxGraM8s+nSlO1I0nyE4jJbwNPeFPhHxodz93qpHR4
	r53O2UlqV+zIxSm7CxEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqv6u-0003z2-5k; Fri, 26 Jul 2019 07:57:52 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqv6U-0003nK-Nc
 for openwrt-devel@lists.openwrt.org; Fri, 26 Jul 2019 07:57:29 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 1854FCE03DE;
 Fri, 26 Jul 2019 09:57:21 +0200 (CEST)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id lrV9gRi45tnH; Fri, 26 Jul 2019 09:57:21 +0200 (CEST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id E8F09CE03E7;
 Fri, 26 Jul 2019 09:57:20 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com E8F09CE03E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1564127840;
 bh=SUy9QQiDY2BHrB/j0RW3uk1ToVRRyNPvGUxsFNd4Usk=;
 h=From:To:Message-ID:Date:MIME-Version;
 b=lx8WHjV8tYSUE7FpHfzLv2MIsK8aXfOb9kEnIHZmXhsb1MoLrx4pWAAB2ZPDb12q7
 UAZcy4R6VsZ1OnX58gC81FWkUHjnfbWSYu2x9Go7WacdDoxssxUrmkDJQTRuKV/kp7
 O0SoHXl8xTn1kWJTLmFK3hkvdX+y3vwuRtSPqHGPa2MULiXz3v4VecN/4t9kRJ74hB
 sgaKFp/6IUxZuYtrAtpiAzmqIRkF3MRRiUvgocf8uehrTQtgjuJC1mN4nuSFBSW8MR
 FdGrERAifDuxMBykGqe2tUFYC4wY5eEDwhdStKMI8Ylu0hUXZZIQjl+s1wEaMtvn3t
 LP0qZjyRwF7DA==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QLi9_jd8-cJG; Fri, 26 Jul 2019 09:57:20 +0200 (CEST)
Received: from [172.29.80.6] (dynvpn-006.vpn.neratec.com [172.29.80.6])
 by mail.neratec.com (Postfix) with ESMTPSA id C935ACE03DE;
 Fri, 26 Jul 2019 09:57:20 +0200 (CEST)
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
To: John Crispin <john@phrozen.org>,
 "openwrt-devel@lists.openwrt.org >> OpenWrt Development List"
 <openwrt-devel@lists.openwrt.org>
References: <20190725154315.7777-1-zefir.kurtisi@neratec.com>
 <ab518b29-1b91-4002-dbf3-54eea50b429a@phrozen.org>
Message-ID: <1b1b6c26-f46a-15ea-f925-82fbfd2d940b@neratec.com>
Date: Fri, 26 Jul 2019 09:57:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ab518b29-1b91-4002-dbf3-54eea50b429a@phrozen.org>
Content-Language: en-CA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_005727_246976_E92B9701 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] logread: add option to filter for
 facilities
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

T24gNy8yNS8xOSA1OjU4IFBNLCBKb2huIENyaXNwaW4gd3JvdGU6Cj4gCj4gT24gMjUvMDcvMjAx
OSAxNzo0MywgWmVmaXIgS3VydGlzaSB3cm90ZToKPj4gVGhpcyBhZGRzIGZpbHRlcmluZyBvcHRp
b25zIGZvciBmYWNpbGl0aWVzIGFzIGZvbGxvd3M6Cj4+IMKgwqDCoMKgIC16wqDCoMKgIDxmYWNp
bGl0eT7CoMKgwqAgaGFuZGxlIG9ubHkgbWVzc2FnZXMgd2l0aCBnaXZlbiBmYWNpbGl0eSAoMC0y
MyksCj4+IHJlcGVhdGFibGUKPj4gwqDCoMKgwqAgLVrCoMKgwqAgPGZhY2lsaXR5PsKgwqDCoCBp
Z25vcmUgbWVzc2FnZXMgd2l0aCBnaXZlbiBmYWNpbGl0eSAoMC0yMyksIHJlcGVhdGFibGUKPj4K
Pj4gV2l0aCB0aGF0Cj4+ICogJ2xvZ3JlYWQgLXogMiAteiAxNicgd2lsbCBkaXNwbGF5IGFsbCBN
QUlMIGFuZCBMT0NBTDAgbWVzc2FnZXMsIHdoaWxlCj4+ICogJ2xvZ3JlYWQgLVogMiAtWiAxNicg
d2lsbCBkaXNwbGF5IGFsbCBidXQgTUFJTCBhbmQgTE9DQUwwIG1lc3NhZ2VzCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IFplZmlyIEt1cnRpc2kgPHplZmlyLmt1cnRpc2lAbmVyYXRlYy5jb20+Cj4+IC0t
LQo+PiDCoCBsb2cvbG9ncmVhZC5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0K
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9sb2cvbG9ncmVhZC5jIGIvbG9nL2xvZ3JlYWQuYwo+PiBpbmRleCBl
NDc1NDFhLi5hNzY0NzQyIDEwMDY0NAo+PiAtLS0gYS9sb2cvbG9ncmVhZC5jCj4+ICsrKyBiL2xv
Zy9sb2dyZWFkLmMKPj4gQEAgLTY2LDYgKzY2LDE4IEBAIHN0YXRpYyBpbnQgbG9nX3R5cGUgPSBM
T0dfU1RET1VUOwo+PiDCoCBzdGF0aWMgaW50IGxvZ19zaXplLCBsb2dfdWRwLCBsb2dfZm9sbG93
LCBsb2dfdHJhaWxlcl9udWxsID0gMDsKPj4gwqAgc3RhdGljIGludCBsb2dfdGltZXN0YW1wOwo+
PiDCoCBzdGF0aWMgaW50IGxvZ2RfY29ubl90cmllcyA9IExPR0RfQ09OTkVDVF9SRVRSWTsKPj4g
K3N0YXRpYyBpbnQgZmFjaWxpdHlfaW5jbHVkZTsKPj4gK3N0YXRpYyBpbnQgZmFjaWxpdHlfZXhj
bHVkZTsKPj4gKwo+PiArLyogY2hlY2sgZm9yIGZhY2lsaXR5IGZpbHRlcjsgcmV0dXJuIDAgaWYg
bWVzc2FnZSBzaGFsbCBiZSBkcm9wcGVkICovCj4+ICtzdGF0aWMgaW50IGNoZWNrX2ZhY2lsaXR5
X2ZpbHRlcihpbnQgZikKPj4gK3sKPj4gK8KgwqDCoCBpZiAoZmFjaWxpdHlfaW5jbHVkZSkKPj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiAhIShmYWNpbGl0eV9pbmNsdWRlICYgKDEgPDwgZikpOwo+
PiArwqDCoMKgIGlmIChmYWNpbGl0eV9leGNsdWRlKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
ICEoZmFjaWxpdHlfZXhjbHVkZSAmICgxIDw8IGYpKTsKPj4gK8KgwqDCoCByZXR1cm4gMTsKPj4g
K30KPiAKPiBjb3JyZWN0IG1lIGlmIEkgYW0gd3JvbmcgYnV0IGJ5IGRlZmF1bHQgYWxsIGZhY2ls
aXRpZXMgd2lsbCBiZSBpbmNsdWRlZCBzbyB0aGUgLXoKPiBpcyBhIG5vb3AgdW5sZXNzIHdlIGFk
ZCBhCj4gCj4gaWYgKGZhY2lsaXR5X2luY2x1ZGUpCj4gCj4gwqDCoMKgIHJldHJ1biAwCj4gCj4g
YXQgdGhlIGVuZCBvZiB0aGlzIGZ1bmN0aW9uID8hCj4gCj4gwqDCoMKgIEpvaG4KPiAKPiAKCkhp
IEpvaG4sCgppZiB5b3UgcGljayBhdCBsZWFzdCBvbmUgZmFjaWxpdHkgdG8gaW5jbHVkZSwgeW91
IGdldCBpbnRvIHRoZSB0b3Btb3N0CidpZiAoZmFjaWxpdHlfaW5jbHVkZSknIGJyYW5jaCBvZiB0
aGUgZnVuY3Rpb24gYW5kIHJldHVybiBpbW1lZGlhdGVseS4gWW91IGdldCB0bwp0aGUgZW5kIG9m
IHRoZSBmdW5jdGlvbiBvbmx5IGlmIGJvdGggKGluY2x1ZGUgYW5kIGV4Y2x1ZGUpIGFyZSAwLgoK
VGhpcyBpbXBsaWVzIHRoYXQgaW5jbHVkaW5nIGZhY2lsaXRpZXMgaGFzIHByZWNlZGVuY2Ugb3Zl
ciBleGNsdWRpbmcgdGhlbSwgd2hpY2gKaXMgaXJyZWxldmFudCBzaW5jZSBpdCBkb2VzIG5vdCBt
YWtlIHNlbnNlIHRvIHVzZSBpbmNsdWRlIGFuZCBleGNsdWRlIGF0IHRoZSBzYW1lCnRpbWUuCgpD
aGVlcnMsClplZmlyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
