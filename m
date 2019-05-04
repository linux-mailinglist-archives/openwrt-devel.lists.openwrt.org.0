Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869B513AC8
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 16:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1yUgHM50g0eMayxBvV1dSET1aULy4s+dTeO5+/U/c0=; b=hPpXOr/b5pW2cJ
	eFegayT2HmmzF7c6Fa3wPg+kdQ0Y3mCpzD3GQSRohMWi/zbqci1AEXFxxV4cUGhgmi4kzJ7vPsqpy
	++ILuVmYoxmCEgSRUej/tkIy9tIasfPQx73rqILlyeJWMqCW+ApH1WW4Ra9eNqtAT4EMunR8SZDRH
	wCuUytrv0ISM5kvIp8AroeqDJndkDN+kc3Sde4cCkGv/1vNFePACbjBC/qnti97fEh1smgFtwODt7
	5G2Xmhw/XLxhjE8XmLFCir9AmoPeNr7KOFibVi9pO5LkokvrmIof6DrxhdANHXfM+zwy3+I9Dt/t7
	mONSqr/gUKV6lyXwBQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMw1M-0006Jc-8g; Sat, 04 May 2019 14:52:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMw1E-0006JF-UT
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 14:52:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id a9so11445323wrp.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 May 2019 07:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GOd/YfthZ4VaiYlB0qOKaIhp8ycbjck1JgorON6XsFk=;
 b=TC+s18r2kZLrIBC+0V/mTbpXanrJXPmubp48sn4Xa7BW5S9EtR2xbdmeyGB1OCIUrV
 VXkGv6OZnz2X2086AzC9ISnvRuNIPoeYslABicI4c1o4ObwIuqX5NWGynvQ62sPH34UQ
 y0ClXwsuQKx7u0EXZQ07pmB5Oq914sCvAPC7P3Z4H+TImUDt5+NtiQ0I7/aJhDUrktN7
 DdiSfLcAqGajwt8AFIs7QZDG/ipXCvvQPlRahcTR65RjuhYvbYWzO4kFRYcuqMU1y0FH
 ZSbA7VBf8Lo7vl+/tn16pgvvf2eWZ1RtxqVUi2gdAgl0MJx1lncqphgBdCcWgbi3McZd
 utCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GOd/YfthZ4VaiYlB0qOKaIhp8ycbjck1JgorON6XsFk=;
 b=nbwKetKS4dYwVcqI90KQ7j1uBbnH+u+RuwDcQglYh8RCVXt80srdGmWBTZHSKyowlf
 ngpiGq99CGQq66+2hRw+C1949VdS35w5xAqaIfLUnFz2ABfJZz0ZXdojq0SF6VPR/iQN
 2J9rHKwYNX478HiktIJ9lLLNFrqLjZLreFKaAmI5pNtkyN0C7jKCZJ9kCls1h5Co5Vt2
 QY0aQOzIdMCCqNF616/6nTMsv+8lgZx0fmIQxHADlw8Hbx5RIZU2PsP0WMKR41Ga+QkV
 wsyMrZHhfI9xhjiYYna7cf8wQ05HcT0PebMTYTrI8jh6HJojrFKk0vEXL8fTZDIGEP31
 9lnw==
X-Gm-Message-State: APjAAAXoEUFTLrNP2id9A3tejPBkJEIx4hMAckZK4Ib0P5ko9+M+deHp
 KTXFL6NXtHj+N79OsDRyg8UKFChZ
X-Google-Smtp-Source: APXvYqz9rK6ctLQ4KglSwjb9o20SI/g0+7kgXf3OBx99BTw+mxtO4+y4oSBe83xZUlqf2ACFr022zw==
X-Received: by 2002:a5d:5045:: with SMTP id h5mr2364799wrt.319.1556981521888; 
 Sat, 04 May 2019 07:52:01 -0700 (PDT)
Received: from debian64.daheim (p4FD09261.dip0.t-ipconnect.de. [79.208.146.97])
 by smtp.gmail.com with ESMTPSA id v23sm3589529wmj.43.2019.05.04.07.52.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 May 2019 07:52:00 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hMw19-0004pH-Ns; Sat, 04 May 2019 16:51:59 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org,
 Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Date: Sat, 04 May 2019 16:51:59 +0200
Message-ID: <97316402.u0ukOGWoMv@debian64>
In-Reply-To: <20190503193846.GI71477@meh.true.cz>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <524607f2-518e-7517-97c5-2ea5ae71846d@gmail.com>
 <20190503193846.GI71477@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_075204_988093_F86F5844 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: linus.walleij@linaro.org, Klaus Kudielka <klaus.kudielka@gmail.com>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpZGF5LCBNYXkgMywgMjAxOSA5OjM4OjQ2IFBNIENFU1QgUGV0ciDFoHRldGlhciB3cm90
ZToKPiBLbGF1cyBLdWRpZWxrYSA8a2xhdXMua3VkaWVsa2FAZ21haWwuY29tPiBbMjAxOS0wNS0w
MyAyMDoxNjozOV06Cj4gCj4gPiBMZXQgbWUgcmVtaW5kIHlvdSB0aGF0IHRoZSBjb21tb24gb25l
ICphbG9uZSogYnJlYWtzIHN5c3VwZ3JhZGUgZm9yIHRob3NlCj4gPiBmb3VyIHRhcmdldHMsIGFz
IFRvbWFzeiBhbHJlYWR5IHBvaW50ZWQgb3V0IGVhcmxpZXIuCj4gCj4gV2VsbCwgaG93IGNvdWxk
IEkga25vdyB3aGF0IHdhcyB3cm9uZyB3aXRoIHYxIGlmIHlvdSBkaWRuJ3QgaW5jbHVkZWQgdGhl
Cj4gY2hhbmdlcyBiZXR3ZWVuIHYxIC0+IHYyIGluIHlvdXIgdjIgcGF0Y2ggOi0pCj4gCj4gQW55
d2F5LCB0aGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiwgaXQgd2Fzbid0IHRoYXQgbXVjaCBjbGVh
ciB0byBtZSBmcm9tIHRoZQo+IGNvbW1pdCBtZXNzYWdlLCBzbyBpZiB5b3UgZG9uJ3QgbWluZCwg
SSdsbCBpbmNsdWRlIHRoZSBkZXRhaWxzIHRoZXJlIGFzIHdlbGwKPiBpbiBvcmRlciB0byBoZWxw
IGl0IGJldHRlciB1bmRlcnN0YW5kIHRvIG90aGVyIGZvbGtzLgo+IAo+IE1lcmdlZCBpbnRvIG15
IHN0YWdpbmcgdHJlZSBodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L3N0YWdpbmcv
eW5lenouZ2l0O2E9Y29tbWl0O2g9MTk1MTc4Zjg4ZWU3YjM4MTVmOWJlYTY2YTI0NTRjY2ZkZjIx
MzVhNQo+IAo+ID4gSW4gbW9yZSBkZXRhaWw6Cj4gPiAKPiA+IFRoZSByb290IG9mIHRoZSBwcm9i
bGVtIGlzIHRoYXQgdGhlICpleGlzdGluZyogZXhwb3J0X2Jvb3RkZXZpY2UgaW4KPiA+IC9saWIv
dXBncmFkZS9jb21tb24uc2ggYmVoYXZlcyBkaWZmZXJlbnRseSwgaWYgdGhlIGtlcm5lbCBpcyBi
b290ZWQgd2l0aAo+ID4gcm9vdD0vZGV2Ly4uLiwgb3IgaWYgaXQgaXMgYm9vdGVkIHdpdGggcm9v
dD1QQVJUVVVJRD0uLi4KPiA+IAo+ID4gSW4gdGhlIGZvcm1lciBjYXNlLCBpdCByZXBvcnRzIGJh
Y2sgbWFqb3IvbWlub3Igb2YgdGhlIHJvb3QgcGFydGl0aW9uLAo+ID4gaW4gdGhlIGxhdHRlciBj
YXNlIGl0IHJlcG9ydHMgYmFjayBtYWpvci9taW5vciBvZiB0aGUgY29tcGxldGUgYm9vdCBkaXNr
Lgo+ID4gCj4gPiBUaGUgdGFyZ2V0cyBtZW50aW9uZWQgYWJvdmUgaGF2ZSBhZGRlZCB3b3JrYXJv
dW5kcyB0byB0aGlzIGJlaGF2aW91ciwgYnkKPiA+IHNwZWNpZnlpbmcgKm5lZ2F0aXZlKiBpbmNy
ZW1lbnRzIHRvIHRoZSBleHBvcnRfcGFydGRldmljZSBmdW5jdGlvbi4KPiA+IAo+ID4gQW5kIHRo
ZW4gY2FtZSB0aGUgbXZlYnUgdGFyZ2V0IHRvIHVzZSBleHBvcnRfYm9vdGRldmljZSAvCj4gPiBl
eHBvcnRfcGFydGRldmljZSBhcyB3ZWxsLiBOb3csIGRpZmZlcmVudCBzdWJ0YXJnZXRzIGJvb3Qg
ZGlmZmVyZW50bHksCj4gPiBhbmQgdGhlIHdvcmthcm91bmQgd291bGQgYmUgZXZlbiBtb3JlIGNv
bXBsZXguCj4gPiAKPiA+IEkgdGhpbmsgbm93IGlzIHRoZSB0aW1lIHRvIG1ha2UgZXhwb3J0X2Jv
b3RkZXZpY2UgYmVoYXZlIGNvbnNpc3RlbnRseSwKPiA+IGFuZCB0byByZXBvcnQgbWFqb3IvbWlu
b3Igb2YgdGhlIGJvb3QgZGlzaywgcGVyaW9kLgoKSnVzdCBhIG5vdGUgaGVyZToKClRoZSBleHBv
cnRfYm9vdGRldmljZSB3aXRoIGl0J3MgUEFSVFVVSUQtMDIgLyBzZFthLXpdMiBoYW5kbGluZyBp
cyBub3QgdGhhdApncmVhdC4gSWRlYWxseSB0aGUgZml4ZWQgcGFydGl0aW9uIHNob3VsZCBiZSBh
dm9pZGVkIGFsdG9nZXRoZXIgaW4gZmF2b3VyIG9mCmEgdW5pcXVlIGZpbGVzeXN0ZW0gbGFiZWwg
b3IgKGxlc3MgaWRlYWwpIGEgZmlsZXN5c3RlbSBVVUlELgoKVHJvdWJsZSBpcyB0aGF0IHNxdWFz
aGZzIGRvZXMgbm90IHN1cHBvcnQgZWl0aGVyLiBTbyB0aGF0J3Mgd2hlcmUgdGhlIGZpeGVkClBB
UlRVVUlEIGFuZCBzZFgvbW1jWCBkZXZpY2UgbmFtZXMgY29tZSBpbnRvIHBsYXkgYmVjYXVzZSBv
dGhlcndpc2UgdGhlIGRldmljZXMKd291bGRuJ3QgYm9vdC4gIFNhZGx5IEkgdGhpbmsgY2hhbmdl
cyBsaWtlIHRoaXMgd2lsbCBwcm9iYWJseSBnbyBvbiB1bnRpbCAKZWl0aGVyIHNxdWFzaGZzIGdl
dHMgdGhlc2UgbWV0YWRhdGEgaW1hZ2UgZmVhdHVyZXMgb3Igc29tZXRoaW5nIHJlcGxhY2VzCnNx
dWFzaGZzIHRoYXQgaGFzIGl0LgoKPiA+IAo+ID4gQ29uc2VxdWVudGx5LCB0aG9zZSB0YXJnZXRz
LCB3aGljaCBib290IHdpdGggcm9vdD0vZGV2Ly4uLiAqYW5kKiB1c2UKPiA+IGV4cG9ydF9ib290
ZGV2aWNlIC8gZXhwb3J0X3BhcnRkZXZpY2UsIGhhdmUgdG8gYmUgYWRhcHRlZCB0byB1c2UKPiA+
IHBvc2l0aXZlIGluY3JlbWVudHMsIG90aGVyd2lzZSB0aGV5IGFyZSBicm9rZW4gYnkgdGhlIGNo
YW5nZQo+ID4gdG8gZXhwb3J0X2Jvb3RkZXZpY2UuCj4gPiAKPiA+IFRoZSB0YXJnZXRzIGFmZmVj
dGVkIHdlcmUgZWFzeSB0byBzcG90IHdpdGggZmluZCAmIGdyZXAuClRydWUsIGl0IHdvdWxkIGhh
dmUgYmVlbiBncmVhdCBpZiB0aGUgY29tbWl0IG1lc3NhZ2UgaW5jbHVkZWQgdGhhdApleHBvcnRf
Ym9vdGRldmljZSBub3cgY29uc2lzdGVubHkgd29ya3Mgb24gdGhvc2UgZGV2aWNlcyB3aGVuIHRo
ZQpyb290PSBpbiB0aGUgY21kbGluZSBtYXRjaGVzIHRoYXQgUEFSVFVVSUQtMDIsIHNkW2Etel0y
IG9yIG1tY2Jsa1swLTldcDIKYW5kIG5vdGhpbmcgZWxzZS4KCkJlY2F1c2UgdGhlcmUgYXJlIHN0
aWxsIGEgZmV3IGRldmljZXMgKEkgdGhpbmsgR2VtaW5pIERJUi02ODUsIERJUi0zMTMKYW5kIFNR
MjAxLCBhbmQgYSBLaXJrd29vZCBHb0ZsZXggSG9tZSkgdGhhdCBoYXZlIHRoZSByb290PSBvbiBz
ZGExIG9yCnNkYTQgYW5kIGNvdWxkIGJlIGNvbnZlcnRlZCB0byB1c2UgdGhlIGV4cG9ydF9ib290
ZGV2aWNlIGZvciBzeXN1cGdyYWRlLgoKQnV0IGFzIG9mIHlldCwgSSBkb24ndCBzZWUgdGhhdCBh
bnkgb2YgdGhlc2UgZGV2aWNlcyBoYXZlIHN5c3VwZ3JhZGUgc3VwcG9ydC4KU28geW91ciBwcm9w
b3NlZCBwYXRjaCBpcyBmaW5lLCB1bmxlc3MgeW91IHdhbnQgdG8gY29tZSB1cCB3aXRoIGEgc29s
dXRpb24KdGhhdCBjYW4gZGVhbCB3aXRoIHRoZSBvZGQtYmFsbHMuLiBCZWNhdXNlIHRoYXQgd291
bGQgYmUgYXdlc29tZSEgCgpDaGVlcnMsCkNocmlzdGlhbgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
