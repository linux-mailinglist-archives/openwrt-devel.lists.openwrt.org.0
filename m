Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D6D12B0EB
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 05:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzLAA7Y4LSfhBoX74rgfNlvsUW3THuom0BNAjW0Aq1M=; b=dD8C9YztF3U7oc
	OxbmbKHufH7ONJZKkAwZll9ccpAMbZbQm2DY0VQ92qAeCR0apYTXEGSN4mgsOMgCEFXIzfnx3kjWn
	IXmzzY3TCoHKxl4p20BHc3NY4sCAJepNJUDDLjlLo+UzjAse8tBOYXqOG6rKyWIPbofSUNT/4Yopa
	WNbbQVzHoRPJUBE/pqJEPTxHjnHD8V6LvBL4LA56+4lFB9wDaYs24LXwjW8/ZhNPHEkXsajSpIwok
	efB33Q8ZA0w5w3pSg38Bwc0ehWZ2zyeRuh1bm6E0I6Rv1MXSHKNKYLXpRGiGWRk2F4DkcE2RTrqf9
	trhPPABo6WYPHF3LWr/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikgv8-0005oJ-LM; Fri, 27 Dec 2019 04:08:14 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikgv2-0005np-8X
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 04:08:09 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 87E34FA69F; Fri, 27 Dec 2019 05:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577419679;
 bh=WIOJzw23r1F7SsD3PnfeLj7AwdQxh9+1K4DO0GIrW/M=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=noVJw4/WKdkQHiL1DUjBZOwyXOZ29g6NyDF2x2k1q+FIUt/DqTJndZyAoRUCxeNwP
 5e/MER5V3upahHbRcH2R01YmkSLriN12L4BoW+k9CS71dmWRSzxLpWQ/Jv3IBM3mgu
 wKgMU6eLn6ph0vseuGaMfLT0PD22TM8Dfwv4Rk/w=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.6] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 12BEDFA699;
 Fri, 27 Dec 2019 05:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577419676;
 bh=WIOJzw23r1F7SsD3PnfeLj7AwdQxh9+1K4DO0GIrW/M=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=IR5nizV31h6gcfESSDRlj6qn6/3HfJUkFlVTrAU0+L6dumMO+o6X5Z5tSILdTa85A
 X7hawQvc9zekR78IvDofW65l1BOTKmqZ57hGxznQAfGsjREZhxQMnV/gZ9BzQUX12+
 EJ8O59EK3DlUsi78/l5Ufyk1OKvnjXFUKxpxZ1CM=
Date: Fri, 27 Dec 2019 05:07:54 +0100
In-Reply-To: <00ce01d5bc41$d1e99520$75bcbf60$@adrianschmutzler.de>
References: <20191225143851.12368-1-foss@volatilesystems.org>
 <00ce01d5bc41$d1e99520$75bcbf60$@adrianschmutzler.de>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,mail@adrianschmutzler.de
From: Stijn Segers <foss@volatilesystems.org>
Message-ID: <9339FD6D-FDED-4104-A6A4-9BE03124F192@volatilesystems.org>
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_200808_440976_9DC5DDE8 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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

bWFpbEBhZHJpYW5zY2htdXR6bGVyLmRlIHNjaHJlZWYgb3AgMjcgZGVjZW1iZXIgMjAxOSAwMDox
MTozNCBDRVQ6Cj5IaSwKPgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBv
cGVud3J0LWRldmVsIFttYWlsdG86b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQu
b3JnXQo+PiBPbiBCZWhhbGYgT2YgU3Rpam4gU2VnZXJzCj4+IFNlbnQ6IE1pdHR3b2NoLCAyNS4g
RGV6ZW1iZXIgMjAxOSAxNTozOQo+PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
Zwo+PiBTdWJqZWN0OiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBbMTkuMDddIHJhbWlwczogcmVu
YW1lIERJUi04NjBMCj5lbnRyaWVzCj4+IGFjY29yZGluZyB0byB0aGUgbmV3IG1hbnVmYWN0dXJl
ciAvIGRldmljZSBzcGVjCj4+IAo+PiBNb3N0IGltYWdlcyBmb2xsb3cgdGhlIG9wZW53cnQtdGFy
Z2V0LXN1YnRhcmdldC1tYW51ZmFjdHVyZXItZGV2aWNlCj4+IG5hbWluZyBzcGVjaWZpY2F0aW9u
LCBidXQgdGhlIEQtTGluayBESVItODYwTCByZXYgQjEgZG9lcyBub3QuIFRoaXMKPnBhdGNoCj4+
IGJyaW5ncyBpdCBpbiBsaW5lLgo+PiAKPj4gTWFzdGVyIGhhZCB0aGlzIHVwZGF0ZWQgYSB3aGls
ZSBhZ28sIGl0J3Mgb2theSB0aGVyZS4KPgo+VGhvdWdoIEknbSBhIGJpZyBmYW4gb2YgdW5pZmlj
YXRpb24gYW5kIG1hZGUgYW4gZWZmb3J0IHRvIGhhdmUgdGhpcwo+c29ydGVkIG91dCBpbiBtYXN0
ZXIsIEkgZG8gbm90IHRoaW5rIGJhY2twb3J0aW5nIHRob3NlIGRldmljZSBuYW1lCj5jaGFuZ2Vz
IGlzIHZlcnkgaGVscGZ1bC4gVGhpcyB3aWxsIGNyZWF0ZSBhZGRpdGlvbmFsIHdvcmssIGJ1dAo+
ZWZmZWN0aXZlbHkgaXQgd2lsbCBqdXN0IG1vdmUgdGhlICJicmVhayIgZnJvbSAxOS4wNy9tYXN0
ZXIgdG8KPjE4LjA2LzE5LjA3Lgo+Cj5BcyBhIGNvc21ldGljIGlzc3VlLCBpdCB3b3VsZG4ndCBi
ZSBhIGNhbmRpZGF0ZSBmb3IgYmFja3BvcnRpbmcgdW5kZXIKPm5vcm1hbCBjaXJjdW1zdGFuY2Vz
LCB0b28uCgpXZWxsIGl0IHdhcyB3b3J0aCB0cnlpbmcg8J+YgQoKU3Rpam4KCj4KPkZvciBmdXJ0
aGVyIHJlYXNvbmluZy9kaXNjdXNzaW9uLCByZWZlciB0byB0aGUgZm9sbG93aW5nIFBSIGluIEdp
dEh1YiwKPndoZXJlIHRoZSBzYW1lIHF1ZXN0aW9uIGhhcyBhbHJlYWR5IGJlZW4gZGlzY3Vzc2Vk
IGEgbW9udGggYWdvOgo+Cj5odHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwv
MjU3NCNpc3N1ZWNvbW1lbnQtNTU5NDYwMTg4Cj4KPkkgd2lsbCBtYXJrIHRoaXMgUFIgYXMgUmVq
ZWN0ZWQsIEkgaG9wZSB5b3UgYWNjZXB0IG15IGFyZ3VtZW50cyBhbmQKPmNvbnRpbnVlIHRvIHN1
Ym1pdCBjb250cmlidXRpb25zIGluIHRoZSBmdXR1cmUuCj4KPkJlc3QKPgo+QWRyaWFuIAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
