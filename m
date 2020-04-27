Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33891BA3BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 14:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIb9jXRCBnQormz6HyuObiosQR2jvkvke9qjs1KX4+c=; b=rjbbQ78WNxaG4s
	Kv+RE8o9rlbYgE59STsFwxCjwWFcCFLUnl0U9aSTVI9iBMw/uftIMy2XaZjcYc0c6KUBSFagu4exM
	ieFHEHVgzXGEThCd5HVyujkrDxEkuYlrjrB4GtMdn+PFG0V9US18wm4phdVHRqjtY9eJKP7JwqA45
	lhsnwP7jSFPvlaybMjo19/bVbXnGe42DumPM6g3d4Y+a+RcR6fZLgmKIuiVHSuH5givf0EdxNYSTe
	9qcxT284WCQKIQDiO2y8JnTcPUw1bfALyohDChK8o3e6ieQkrOncSQzQQUdoWd2OZTqIBm+6wfa4w
	/0zofVMF8l5k3grT0fCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT35k-0004eW-8r; Mon, 27 Apr 2020 12:42:32 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT35d-0004d7-Hc
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 12:42:27 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 03RCgCV5022276
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Mon, 27 Apr 2020 14:42:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1587991333; bh=v70ZSkrejWfnqnW9/2XDeo44FH0koUTZ+2SOxICvFbI=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=KpagpGlcRsWAvt42iSlZMBZkWFOBanDQK/SifzT6Sbq5FnxZ10LUsBs4LubqWnFtv
 8mWXTpVJFzm/1NN3Th7HMU4+4mvwOrK4uBo48M0TTuVgi/QqsWmz0+j+ufrjVn6mou
 vY30lNrVdVfQ5ghmCTfv0R2pR1q+iaMumD2Onyv8=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jT35Q-0005TQ-68; Mon, 27 Apr 2020 14:42:12 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
Organization: m
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
Date: Mon, 27 Apr 2020 14:42:12 +0200
In-Reply-To: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 (Jeonghum Joh's message of "Mon, 27 Apr 2020 17:52:14 +0900")
Message-ID: <877dy1xfq3.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_054226_098154_F0FA0F8D 
X-CRM114-Status: UNSURE (   7.18  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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

SmVvbmdodW0gSm9oIDxvb3NhcHJvZ3JhbW1lckBnbWFpbC5jb20+IHdyaXRlczoKCj4gSSBhbSBw
b3J0aW5nIGEgNUcvTFRFIG1vZGVtIGludG8gT3BlbldSVC4KCkZvbGxvdyB0aGUgaW5zdHJ1Y3Rp
b25zIGZvciBMVEUgbW9kZW1zLiAgQSA1RyBtb2RlbSBpcyBwcmV0dHkgbXVjaCB0aGUKc2FtZSB3
cnQgZHJpdmVycyBhbmQgYmFzaWMgbWFuYWdlbWVudC4gIEF0IGxlYXN0IGZvciBRdWFsY29tbSBi
YXNlZAptb2RlbXMgb24gYSBVU0IgYnVzLiAgSGF2ZSBubyBleHBlcmllbmNlIHdpdGggYW55dGhp
bmcgZWxzZS4gIFRoZSBJbnRlbAphbmQgSHVhd2VpIG1vZGVtcyBhcmUgY29tcGV0ZWx5IHVua25v
d24gdG8gbWUsIGFuZCBtb3N0IGxpa2VseQp1bnN1cHBvcnRlZCBmb3IgdGhlIGZvcnNlZWFibGUg
ZnV0dXJlLiAgQW5kIEknbSBhbHNvIGJsYW5rIG9uIHRoZSBtYWdpYwpvZiBRdWFsY29tbXMgUENJ
ZSBpbnRlcmZhY2UuIFF1YWxjb21tIGRpZCB3b3JrIG9uIGEgZHJpdmVyLCBidXQgaXQncwpiZWVu
IGEgbG9uZyB0aW1lIHNpbmNlIEkgc2F3IGFueSB1cGRhdGUgb24gdGhhdC4gIEkgZ3Vlc3Mgbm8g
b25lIGNhcmVzCmVub3VnaC4gIFN1cGVyU3BlZWQgVVNCIGlzIGZpbmUgZm9yIG1vc3QgdXNlcnMg
Zm9yIG5vdy4KCkFueXdheSwgc2V2ZXJhbCBYNTUgYmFzZWQgbW9kZW1zIGFyZSBhbHJlYWR5IHN1
cHBvcnRlZCBvdXQgb2YgdGhlIGJveCBpbgpPcGVuV3J0IG1hc3Rlci4gIFRoZXJlIGlzIG5vIG5l
ZWQgdG8gcmVpbnZlbnQgdGhlIHdoZWVsIGlmIHlvdSBhcmUgdXNpbmcKb25lIG9mIHRob3NlLgoK
WW91IG1heSBvYnZpb3VzbHkgZGVjaWRlIHRvIGltcGxlbWVudCB5b3VyIG93biBhbHRlcm5hdGl2
ZSBzb2x1dGlvbnMsCmxpa2UgdXNpbmcgc29tZSB2ZW5kb3Igc29mdHdhcmUuIEJ1dCB0aGF0IHdp
bGwgbGltaXQgdGhlIHVzZXIgY29tbXVuaXR5CnNldmVyZWx5LiBBdCBsZWFzdCB1bnRpbCB0aGUg
c29sdXRpb24gYXR0cmFjdHMgbW9yZSB1c2Vycy4gIEFuZApjb21tdW5pdHkgc3VwcG9ydCBkZXBl
bmRzIG9uIHVzZXJzLCB3aGljaCBJIGJlbGlldmUgaXMgc29tZXRoaW5nIHlvdQpzaG91bGQgY29u
c2lkZXIgc2luY2UgeW91IGhhdmUgZW5kZWQgdXAgaW4gdGhpcyBmb3J1bS4gIFlvdSBhcmUgdW5s
aWtlbHkKdG8gZmluZCBhbnlvbmUgaGVyZSB3aG8gaGF2ZSBhbnkgZXhwZXJpZW5jZSB3aXRoIHlv
dXIgcGFydGljdWxhciB2ZW5kb3IKc29mdHdhcmUgdmVyc2lvbi4KClBlcnNvbmFsbHksIEkgYW0g
aGFwcHkgdG8gZ2l2ZSBhZHZpY2UgYWJvdXQgYW55dGhpbmcgcmVnYXJkbGVzcyBvZgpleHBlcmll
bmNlLiAgQnV0IHRoZSBxdWFsaXR5IG9mIHRoYXQgYWR2aWNlIGlzIHByb2JhYmx5IGEgdGlueSBi
aXQKYmV0dGVyIHdoZW4gaXQgaXMgYmFzZWQgb24gc29tZXRoaW5nIEkndmUgdHJpZWQgbXlzZWxm
LiAgT3IgbWF5YmUgbm90PwpJcyBwcm9iYWJseSBiYWQgaW4gYW55IGNhc2UuCgoKQmrDuHJuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
