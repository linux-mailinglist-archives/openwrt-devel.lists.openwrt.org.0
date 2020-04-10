Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F44D1A4996
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 19:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czrS6ZQ4pPIcOyBJud0+Ok2nsY7Xvko+Nl6Yc9O4mAI=; b=J6IViWwA/mCnYC
	NS8xtZf6kY/pkziRk213Mht60iq7whmAX/iE6PZBMHj0GsiPxlKLn6heXjjR4eBCu15pnixITm+Fo
	56NfvQ3mItQIUbprMre8AELsGn30fPVBctSm8yLKjONxPQ3TClvfg/nNt4zcNsCGQe6YLghMXLBxf
	Wovhk9bzmKdZv00NF+TngnQSlZqV1MROzcOPqU4c4q6yylmbTRMtq25JUHdK5LUqZ2J2ArHP+dQyE
	ybsMYzSLwpVMaM0RZ9xON5nlsxzoZLxj+RxMKOfvYk4FXRKpOn1ke7efWR6mxtSQyw3731Mh3wgjh
	il0g4stWWJYbdemF/tLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxsE-0003we-Mg; Fri, 10 Apr 2020 17:55:26 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxs7-0003vu-IZ
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 17:55:21 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 03AHtCRU023019
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 10 Apr 2020 19:55:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1586541313; bh=peDtI5Ul7DFdsDsSjWqKiFg0L6mQmE+qQ9BjM10zU1Q=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=WXtIcCazT/JD72lJ052Fz1tHHNdsBUsLaWt4jJWUMlwWXCjuq4SnQwkoLpELMArzH
 dmmbAvKauB7X6uXewmwH0VHSbhJaVHMtHuUfZ10JB5kr7beVCQHcILbg55KBh1g587
 7Yq4uyD/zPnT+5BmCU/jrBKFoKYBhhlKMpzCSRDw=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jMxs0-0004YN-3A; Fri, 10 Apr 2020 19:55:12 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Andre Valentin <avalentin@marcant.net>
Organization: m
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <878sj7s6uj.fsf@miraculix.mork.no>
 <a466a608-b27f-9b56-1a40-9b11866d08e1@marcant.net>
 <87lfn7qosj.fsf@miraculix.mork.no>
 <6d6ab82d-e736-673d-3877-1ba083bbe6e8@marcant.net>
Date: Fri, 10 Apr 2020 19:55:12 +0200
In-Reply-To: <6d6ab82d-e736-673d-3877-1ba083bbe6e8@marcant.net> (Andre
 Valentin's message of "Fri, 10 Apr 2020 10:47:58 +0200")
Message-ID: <87imi7p6nz.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_105520_162875_902E9B75 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QW5kcmUgVmFsZW50aW4gPGF2YWxlbnRpbkBtYXJjYW50Lm5ldD4gd3JpdGVzOgoKPiBBbSAwNy4w
NC4yMCB1bSAxNzo0OSBzY2hyaWViIEJqw7hybiBNb3JrOgo+PiBKdXN0IHJlbWVtYmVyZWQgYW4g
aXNzdWUgb24gbXkgdG9kbyBsaXN0OiBUaGVyZSBoYXZlIGJlZW4gc29tZSBNVFUKPj4gaGFuZGxp
bmcgY2hhbmdlcyBpbiB0aGUga2VybmVsIG5ldHdvcmtpbmcgQVBJLiAgVGhpcyBhZmZlY3RlZCB0
aGUKPj4gcW1pX3d3YW4gUU1BUCBoYW5kbGluZy4gIEkgYW0gbm90IHN1cmUgYWJvdXQgdGhlIGN1
cnJlbnQgc3RhdHVzLiAgV2lsbAo+PiBoYXZlIHRvIGRpZyBhIGJpdCBtb3JlLiAgQnV0IHRoaXMg
bWlnaHQgYmUgeW91ciBwcm9ibGVtLgo+Cj4KPiBUaGF0IG1hZGUgbWUgc2V0IE1UVSBvZiB3d2Fu
MCB0byAxNjAwLCBhbmQgdGhlIHFtaW11eCogdG8gMTUwMC4gTm8gbW9yZSBwcm9ibGVtcyBhbnlt
b3JlLgo+IFRoaXMgc2hvdWxkIGdvIGludG8gZG9jdW1lbnRhdGlvbiwgbm90IHRoYXQgYW55Ym9k
eSBtYWtlcyB0aGUgc2FtZSBlcnJvcnMuCgpZZXMsIHRoaXMgZ29lcyBpbnRvIHRoZSBsaXN0IG9m
IGlzc3VlcyBJJ2QgbGlrZSB0byBmaXggd2l0aCB0aGUgUU1BUAppbXBsZW1lbnRhdGlvbi4gSXQn
cyBhbHNvIHVubmVjZXNzYXJ5IGhhcmQgdG8gY29uZmlndXJlLiAgQW5kIHRoZXJlIGlzCm5vIHdh
eSB0byBmaWd1cmUgb3V0IHdoaWNoIHFtYXAgbmV0ZGV2IGJlbG9uZ3MgdG8gd2hpY2ggbXV4X2lk
LgoKPiBIb3cgbXVjaCBvdmVyaGVhZCBkb2VzIHFtdXggY3JlYXRlIChmb3IgY29ycmVjdCBjYWxj
dWxhdGVkIE1UVQo+IG9mZnNldCk/CgpMb29rcyBsaWtlIDQgYnl0ZXM6Cmh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVl
L2RyaXZlcnMvbmV0L3VzYi9xbWlfd3dhbi5jI242NgoKCkJqw7hybgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
