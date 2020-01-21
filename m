Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9573C144633
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 22:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SjUkk41DyvRXYv56EidRvI4x+rc9CCAw0xhR+aJ9LFg=; b=P+d7Km2X9Mynj3TqSQZpKEoij
	08m3acDbMvwaoNjB/9ow0Kw716ZSqFqo6nD0TnpH6/USG96+QtVhnYTKLl2ru/ah9El1jhC5GSGEL
	7PTT38kS8z6MioU97jcyQjtsxaPieS+n0bZIH2iZ01cvUisoPqwNGVOiSUiFNSRbKAq7CkROvUyD8
	nG7ZDB9yweRC+KRBDpV06cO1OYktfdepKB5ek4gs0Se6DRi7a2NXgiKQEDFHeenEpnYrq9WRrj1Hz
	w7fPGmKDWJYhVUqJUKBxRWbMPFRN5XSMxj7PIHfnNZibHFora5wr1Sv/QHrUabobaEjHX+mYjxHXz
	+B92Enm/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0hV-0001TH-SM; Tue, 21 Jan 2020 21:04:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0hQ-0001TB-Ue
 for openwrt-devel@bombadil.infradead.org; Tue, 21 Jan 2020 21:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fZ0wQQsC0E0LiZTUbSykSu/7qCAq9nsz/Gw/Z5rQxhw=; b=VmWiCtgkjkC+LWvcmTqOdoQtPL
 gRgEBz2y1PO5Fw6IO2Mw2ySdBvzVUmZAwmM1TMQA0A1UJR0M1NKdN/WbPo+Bx5uywKjT9lvWt2LHj
 agg1Lx5A0Z3Q9K6vQQqXuOIAeD7ZQlj71ozfRELPBM363FmAap/X2oWMmZqRvTEpqKl3xvswbtQOc
 WAx5pgGZaRjZeIChx7mFP1dSJbmMt/HRi+RyssTNKCXnLTjn2R9jCggyySz+yhZzVncMf6R0smIBU
 rYgPl+zATK8GxnNLuSx/Wgt4JDuriiTfJjCSgLi15cNqnWO/pnBIYY2tWkZAlpXKCVRVAiuh7kPG+
 XC6We0eg==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0hN-0002mC-Fb
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 21:04:34 +0000
X-Originating-IP: 166.171.121.25
Received: from [192.168.43.130] (mobile-166-171-121-25.mycingular.net
 [166.171.121.25]) (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C93CEC0004;
 Tue, 21 Jan 2020 21:03:52 +0000 (UTC)
To: =?UTF-8?Q?Andreas_Br=c3=a4u?= <ab@andi95.de>,
 openwrt-devel@lists.openwrt.org
References: <498f1956-e048-dcfc-7dca-0cb8fd6984ca@andi95.de>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <4f8d80e8-276f-7b01-57ec-321d1c0607ee@aparcar.org>
Date: Tue, 21 Jan 2020 11:03:48 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <498f1956-e048-dcfc-7dca-0cb8fd6984ca@andi95.de>
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] GSoC 2020 - reminder for ideas
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

SGksCgpJIGFkZGVkIGEgZGV2aWNlIHBhZ2VzIHByb2plY3QgaWRlYS4gVGhhdCBjb3VsZCBjb21l
IGluIGhhbmR5IHdpdGggdGhlIApwYWdlIHJlZnJlc2ggYW5kIGFsbC4gQWxzbyBJJ20gdHJ5aW5n
IHRvIHNldHVwIGEgZGV2aWNlcy5naXQgcmVwb3NpdG9yeSAKc3RvcmluZyBhbGwgcmVsZXZhbnQg
bWV0YWRhdGEuIFRoYXQgY291bGQgYmUgYW4gYWRkaXRpb25hbCBwcm9qZWN0IG9yIEkgCmp1c3Qg
ZG8gaXQgb24gbXkgb3duIGFuZCBsZWF2ZSB0aGUgcmVuZGVyaW5nIHRvIGEgc3R1ZGVudC4KCkJl
c3QsClBhdWwKCk9uIDEvMTgvMjAgNzowNyBBTSwgQW5kcmVhcyBCcsOkdSB3cm90ZToKPiBIaSB0
aGVyZSwKPgo+IGFzIEkgbWVudGlvbmVkIHdlIHBsYW4gdG8gYXBwbHkgYWdhaW4gYXMgb3JnYW5p
emF0aW9uIGZvciBHb29nbGUgU3VtbWVyCj4gb2YgQ29kZS4KPgo+IFRoZSBhcHBsaWNhdGlvbiBw
ZXJpb2QgZm9yIG9yZ2FuaXphdGlvbiBvcGVuZWQgMiBkYXlzIGFnby4KPgo+IFRvIGFwcGx5IHN1
Y2Nlc3NmdWwgYXMgb3JnYW5pemF0aW9uLCB3ZSBhbHNvIG5lZWQgdG8gcHJvdmlkZSBhbiB1cGRh
dGVkCj4gbGlzdCBvZiBwcm9qZWN0IGlkZWFzLiBUaGVzZSBpZGVhcyBhcmUgYSBiYXNlIGZvciBz
dHVkZW50cyB0byBkZXZlbG9wCj4gdGhlaXIgcHJvcG9zYWwuCj4KPiBQbGVhc2UgdXBkYXRlIG9y
IGFkZCB5b3VyIG5ldyBpZGVhcyBhcyBzb29uIGFzIHBvc3NpYmxlIHRvIG91ciBwcm9qZWN0J3MK
PiB3ZWJzaXRlIGF0IGh0dHBzOi8vcHJvamVjdHMuZnJlaWZ1bmsubmV0Cj4KPiBZb3UgY2FuIGRv
IHRoYXQgdmlhIGdpdGh1YiwganVzdCBhZGQgb3IgdXBkYXRlIHlvdXIgZmlsZXMgYXQKPiBodHRw
czovL2dpdGh1Yi5jb20vZnJlaWZ1bmsvcHJvamVjdHMuZnJlaWZ1bmsubmV0LWNvbnRlbnRzL3Ry
ZWUvbWFzdGVyL2NvbGxlY3Rpb25zL19wcm9qZWN0cwo+Cj4gVGhhbmsgeW91IQo+Cj4gQmVzdCBy
ZWdhcmRzLAo+Cj4gQW5kaQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
