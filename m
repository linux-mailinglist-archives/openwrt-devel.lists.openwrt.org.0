Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BACFEAF29
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 12:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVNcFiAn0jrQ3ZJ3Kx7TVm1Jky/0a4X+nnkgRucO6Js=; b=iNFeeMFpzn6Lwc
	xGj66XX+23gR1SpfUBq27qjl/DN+tZJGKUq0H0Pv9n1/mpyVVrFHQGQWAq2bWl/aM+4XiBL3Gaq/0
	GO11eYFU8IIsZ4MCK2hvuMfYM2/JhD6YGWaHWbA6TVcqhqQ/+vDQE4cpczPtyly7ac+CWRlEh1A4r
	VgE/5APXG7Stp7ayitsKzWBGC9SdO2HJSwlQK2zz8f1Hcwr4nZBvcQCgujRUcn4wWgbbIhS1x0fCC
	/47VASmKd7fx2iNQs6x1XAUZA9fg2ymZZPVhujPfuAoynDphvclaSc87WoS80rocA0j7KXg3vZtvt
	KASiYR43DnqVFBlNOmnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8yN-0000kf-KG; Thu, 31 Oct 2019 11:50:39 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8yG-0000jl-M2
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 11:50:34 +0000
Received: by mail-oi1-x230.google.com with SMTP id v186so4893552oie.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 04:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PRxwqKtrvNxqOC9/qQ370Wczgc5gEE+DYMXc9lxIyTk=;
 b=td/1q2HTiAMSElZnyaLLt2othE3s9eJb0sR/+NlD4BivW+VEErPFHREJePir+GRX5S
 438AKQC27DTT1ePdOqEPKrXavTuyyP4mcdSY3WYcJf2MMVlspGbyabaBUWN0DAkloJk2
 5oivFvvZFNAOE5mNGs0Ke9739aV+EoKgYyDclxEjCYtFZr+P73+sKscNJYsaOkyIaVZ4
 5dMuZOjdLsmPbHU25nKHb+7wIZXZtvnCgtXa09OpaewTNHA1sbu0x/HjbDW2eKGMyLtH
 URMKxN4fscY/Csq8PCoaULqF5KR6F4PyEPrh8opzRYzIukKXCVEWoSFTbL4un7NpdPM2
 MoTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PRxwqKtrvNxqOC9/qQ370Wczgc5gEE+DYMXc9lxIyTk=;
 b=l2RNHjERAralxT4/dLcc2jIEvkINI2/S3TnqQfj3jqFc7v0EM3o8BaCyJnbLRzsoV1
 hDhZNQsFy7m4NQe969npoCbvZ13FkvIyvSM06g/nTo5FISXshzxwlJQ1tJ6/dMeACcLC
 h1ITwBahtfu8HNkJw7ZRUgmz8xX1xyW6U1aLRXKpMb2fSCVB9i/AQFcBveuEaiFhCVTF
 xVu6nLRKtvLAR0eX7j4j2Td4lYeVgKGN6UcT5hnWGiER+/4oVB/IQ+wIFcRi+dnbgx+q
 z0yQUjxiFsuTIxJvWJNe9CPG/sv5jsvkMqu6tA8j4kRQny7gRvXKr3x/pkwRfpvJBQRF
 5Zzg==
X-Gm-Message-State: APjAAAVZXAnYySUXESA0UeF/GZfD5vIGCgbq1DAGJkjCiP3eVqlp0zld
 OkNfRvoGvLViRcN9D+tFTYh9HOMVrY1qSWfY1SZ4tu/w
X-Google-Smtp-Source: APXvYqy9SdPkBe0BYCm5y0eVgu16SsnwBzxgQ1tH1KWmxu0PCgNVgStEqSthdh1TtQg4XDM6PyZssf4lRs1sJWAeM5c=
X-Received: by 2002:aca:5116:: with SMTP id f22mr598609oib.30.1572522626926;
 Thu, 31 Oct 2019 04:50:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP; Thu, 31 Oct 2019 04:50:26
 -0700 (PDT)
In-Reply-To: <87tv7p5keg.fsf@miraculix.mork.no>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <87tv7p5keg.fsf@miraculix.mork.no>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 31 Oct 2019 12:50:26 +0100
Message-ID: <CAKR_QVLkG=t5fuE83rsnRW0=L4LGT4m=tb3-nOBhPUiFUyJ0Yg@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_045032_744263_5069610E 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMzEvMTAvMjAxOSwgQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+IHdyb3RlOgo+IEpvaG4g
Q3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JpdGVzOgo+Cj4+IEhpLAo+PiBzaG91bGQgd2Ug
dXNlIHY1LjQgYXMgb3VyIG5leHQga2VybmVsID8KPgo+IEhlbGxvIEpvaG4hCj4KPiBJIGFtIHN0
aWxsIHN0cnVnZ2xpbmcgdG8gdW5kZXJzdGFuZCBob3cgdGhlIHByb2plY3QgbWFrZXMgcmVsZWFz
ZQo+IGRlY2lzaW9ucy4gIEkgZG9uJ3QgdGhpbmsgeW91ciBxdWVzdGlvbiBtYWtlcyBzZW5zZSB3
aXRob3V0IGNvbnNpZGVyaW5nCj4gdGFyZ2V0IHJlbGVhc2UgZGF0ZXMsIGF0IGxlYXN0IGluIGEg
eWVhcmx5IHJlc29sdXRpb24sIGdpdmVuIHRoZSBtYXNzaXZlCj4gYW1vdW50IG9mIHdvcmsgaW52
b2x2ZWQgd2l0aCBzd2l0Y2hpbmcga2VybmVsIHZlcnNpb25zLgo+Cj4gU28gbXkgcXVlc3Rpb24g
aXM6IElzIGl0IHJlYWxpc3RpYyB0byBleHBlY3QgYW4gT3BlbldydCByZWxlYXNlIHdpdGgKPiB2
NS40IG5leHQgeWVhcj8KPgo+IEJlY2F1c2UgaWYgaXQgaXNuJ3QsIHRoZW4gdjUuNCBpcyByZWFs
bHkgYSB3YXN0ZSBvZiB0aW1lIElNSE8uIFlvdQo+IHNob3VsZCB0YXJnZXQgdGhlIG5leHQgbG9u
Z3Rlcm0ga2VybmVsIGFmdGVyIHY1LjQgaW5zdGVhZCBmb3IgdGhlIGZpcnN0Cj4gMjAyMSByZWxl
YXNlLgo+Cj4gQW5kIG9mIGNvdXJzZSwgaWYgeW91IHRoaW5rIGEgMjAyMCByZWxlYXNlIHdpdGgg
djUuNCBpcyByZWFsaXN0aWMsIHRoZW4KPiB0aGVyZSdzIGFuIG9wZW4gcXVlc3Rpb24gb24gd2hh
dCB0byBkbyB3aXRoIHY0LjE5LiAgQXJlIHR3byBPcGVuV3J0Cj4gcmVsZWFzZXMgbmV4dCB5ZWFy
IGxpa2VseS9wb3NzaWJsZT8gIElmIG5vdCwgdGhlbiB2NS40IHNob3VsZCBwcm9iYWJseQo+IHJl
cGxhY2UgdjQuMTkgYXMgdGhlIGN1cnJlbnQgdGFyZ2V0IGtlcm5lbCBhcyBzb29uIGFzIHBvc3Np
YmxlLgo+Cj4gWWVzLCBJIGtub3cgd2hhdCB5b3VyIG1lZXRpbmcgbWludXRlcyBzYXlzLiAgQnV0
IHR3byByZWxlYXNlcyBpbiAyMDE5IGlzCj4gb2J2aW91c2x5IG5vdCBnb2luZyB0byBoYXBwZW4u
IEFuZCBwZXJzb25hbGx5IEkgZG9uJ3Qgc2VlIGhvdyB0aGF0J3MKPiBzdWRkZW5seSBnb2luZyB0
byBjaGFuZ2UgZm9yIDIwMjAgdW5sZXNzIHlvdSBkbyBzb21ldGhpbmcgZHJhc3RpYyB0bwo+IHNp
bXBsaWZ5IHRoZSByZWxlYXNlIHByb2Nlc3MuIFllcywgdGhhdCBtZWFucyBsb3dlcmluZyB0aGUg
c3RhbmRhcmRzLgo+IE1heWJlIG1ha2luZyByZWxlYXNlcyB0aGF0IHdvbid0IGJlIG1haW50YWlu
ZWQsIGFuZCB0aGVyZWZvcmUgZG9uJ3QgbmVlZAo+IHRvIGJlICJmdXR1cmUgcHJvb2YiPwo+Cj4K
PiBCasO4cm4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo+CgpZZXMsIHByZXR0eSBzdHJvbmcgYXJndW1lbnRzIHRvIHNraXAgNS40
IGFuZCBqdXN0IHVzZSA0LjE5IGZvciB0aGUKMjAueHggcmVsZWFzZSAod2hpY2ggc2hvdWxkIG5v
dCBiZSAyMC4wMSBvciAyMC4wNyBidXQgbW9yZSBsaWtlbHkKMjAuMTApCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
