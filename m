Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176131C2F16
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 22:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yeamN8zV4ew4qPGSCdLKfhab8VtKyvdG2EtXNNBEnow=; b=lRvJqhC3obq7ViX0OyE+y0WDku
	8Pmoe+iUley3J7vXQahG95Xp4nRkzJii4NhL20g3v5Z7DuxprACUD083l0C9k4QMJBzLrtRLl0IaV
	vIwINM5vx0Pd6g/B1qjRN507soFPL+Qo/4CGfdPhAxel3Ad3jAuZ3L5oTEckTZ97b3kcafl1NiqKA
	YYwu0MS8c7SjiV5XEmZRnDQSoEakB0RGrsEHSE56Ne+Kf+fwQcJT4xbr8KDZA5RholMdBrTOeTtMc
	FgSSG3ACbt9QavjlIRxhF1sM/A51M4lTrPYOpOhIYY1lsx+RRRqi4TI3HVIbjNZK1OyxoEo+zxtkK
	tdrqt4SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVL23-0004Re-Mm; Sun, 03 May 2020 20:16:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVL1y-0004Qw-Qg
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 20:16:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id d15so18477176wrx.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 May 2020 13:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=QsUOH8JjAr4gJE4n2+dlX1uRj0zs0wFZRchuxPJxg3M=;
 b=fr1X+uVeDG4DGgO1GmiIhrsPKdvDE+TlhO+FgiNYqnI17+BJ95PRafYahBvii6yGlW
 xqSGkaVl9kQGvQSarz3xR37RRIDxDGsuQeKsvMlnhpAr0PfMErpJQ0FhN7DbpGNLGl1A
 NmxpqfquHMMrEwaoaKTMjzSW2eVTITesiG61OTnkV7po82vmb04iBee3Gi3RH3nlvmF2
 diLkdPLm5v0SgXNqRq3iYUIDkdg9ieBOF4GASNUCI0h7T/rmOnniyZ8TVNgt6FMm+V5f
 1TnGlbBPf0fSaxNQbwZPo60ongKHQWwZv+xGnyAcNldo68eq2HiteXw52TvJi4wkvPpY
 LGbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=QsUOH8JjAr4gJE4n2+dlX1uRj0zs0wFZRchuxPJxg3M=;
 b=LR5+2oRuX/Qk/uKh7m01ctfAExm9sND/V7GwWgrSJa/M/7l+3h3fJX51SZPgyvqErh
 GC2k58g2pQhnV0nhTdxWLqDJyeVZlsrtM6FEzzFx/6lu4xoKDrQMFFw/3cTtdnP2Q5I7
 c/AE3pvr+zd8QUoZ0J9latm8neuUtTLpRLwb4px/Sh1gpMsChfdq6aM8DfypC4g5LVQL
 jWaEu2uEyR/fmvacyxPjsHqyemiC2OdEv2WgotqhBztVnIj6lsZQmPQ3DAMY3qO9Uf/F
 WDrCc8eYyuysJ+pgNk6eAcCmJhOx3W6we87grlgsxvorxcWg4Ozvj3PiFxgVvRj7OTJM
 Q4eA==
X-Gm-Message-State: AGi0Pual3w67f0LxkmtyR2iz6LVLzmKklpprE8wCrCx/w9tWyoZD/kLp
 OTf9m4I+O37xM+RqhV5eC2CzMrrPVOdyFC8NvTZxcpbI
X-Google-Smtp-Source: APiQypIJDleqSEYyAH+sbqtnA5FW41vdmpKBqoUVtaA5JvfjNytmyUzePsFyS+qHPJiDlXsegTXhmDNvLZboWP4Zz3A=
X-Received: by 2002:a5d:4b0a:: with SMTP id v10mr16713556wrq.342.1588536964012; 
 Sun, 03 May 2020 13:16:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
 <CAChtp7578QXX8Auf6Ga=rKzW+4AqiK=5f5Yxadpq714ho2OxCw@mail.gmail.com>
In-Reply-To: <CAChtp7578QXX8Auf6Ga=rKzW+4AqiK=5f5Yxadpq714ho2OxCw@mail.gmail.com>
From: Vivek Unune <npcomplete13@gmail.com>
Date: Sun, 3 May 2020 16:15:54 -0400
Message-ID: <CAChtp76jcHv+HQT_K31KSUiT=63K8VV+ZErq7deakB4SGbX=Sg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, rafal@milecki.pl
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_131606_886982_3696F2F3 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [bcm53xx] Pin Controller in Northstar
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

T24gU3VuLCBBcHIgNSwgMjAyMCBhdCAxMDo0OCBBTSBWaXZlayBVbnVuZSA8bnBjb21wbGV0ZTEz
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1hciAzMSwgMjAyMCBhdCA1OjUxIFBNIFZp
dmVrIFVudW5lIDxucGNvbXBsZXRlMTNAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSBBbGwg
LyBSYWZhxYIsCj4gPgo+ID4gSSdtIGFib3V0IHRvIHVwZGF0ZSBkZXZpY2UgdHJlZSBmb3IgTGlu
a3N5cyBQYW5hbWVyYSByb3V0ZXIgKGFrYQo+ID4gRUE5NTAwKSBzbyB0aGF0IGl0IHVzZXMgcGlu
IGNvbnRyb2xsZXIgZGVmaW5lZCBpbiBCQ001MzAxWC5kdHNpIFsxXS4KPiA+IEhvd2V2ZXIsIHRo
ZSBtYWlubGluZSBrZXJuZWwncyBOb3J0aHN0YXIgcGluY3RybCBkcml2ZXIgY29kZQo+ID4gKG5z
LXBpbmN0cmwuY3MgWzJdKSBpcyBvdXQgb2Ygc3luYyB3aXRoIHRoZSBkZXZpY2UgdHJlZS4gQXMg
eW91IHNlZSwKPiA+IHRoZSBkcml2ZXIgbG9va3MgZm9yIHN5c2NvbiBub2RlIHdoaWNoIGlzIGFi
c2VudCBpbiB0aGUgZGV2aWNlIHRyZWUuCj4gPgo+ID4gV2FzIHRoZXJlIGEgcGF0Y2ggc3VibWl0
dGVkIHRvIHVwZGF0ZSB0aGUgZGV2aWNlIHRyZWUgYWxvbmcgd2l0aCB0aGUKPiA+IGRyaXZlcj8g
SSBjb3VsZCBvbmx5IGZpbmQgdGhlIHBhdGNoIHdydCB0aGUgZHJpdmVyIFszXQo+ID4KPiA+IElm
IHRoZSBkZXZpY2UgdHJlZSB3YXMgaW5kZWVkIHVwZGF0ZWQsIHdoaWNoIGdpdCByZXBvc2l0b3J5
IHNob3VsZCBJCj4gPiB1c2UgdG8gcHJlcGFyZSBhbmQgdGVzdCBteSBwYXRjaD8KPiA+Cj4gPiBU
aGFua3MsCj4gPgo+ID4gVml2ZWsKPiA+Cj4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZh
bGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2FyY2gvYXJtL2Jvb3QvZHRzL2JjbTUzMDF4LmR0c2kKPiA+
IFsyXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVy
cy9waW5jdHJsL2JjbS9waW5jdHJsLW5zLmMKPiA+IFszXSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzEwNzM1OTMzLwo+Cj4gQWRkaW5nIFJhZmHFggo+Cj4gU28gSSd2ZSBtYW5h
Z2VkIHRvIGNvbXBpbGUgYW5kIGhhdmUgdGhlIHBpbmNvbnRyb2wgd29ya2luZyBpbiBPcGVuV3J0
Lgo+IEhvd2V2ZXIsIGluIG9yZGVyIHRvIHN1Ym1pdCBteSBwYXRjaCB1cHN0cmVhbSBJIHdpbGwg
bmVlZCBjb3JyZWN0IHRyZWUKPiB0byBjcmVhdGUgbXkgcGF0Y2guCj4KPiBSYWZhxYIgLSBjYW4g
eW91IHBvaW50IG1lIGluIHRoZSByaWdodCBkaXJlY3Rpb24/Cj4KPiBUaGFua3MsCj4KPiBWaXZl
awoKQnVtcCAmIGNoYW5nZSBzdWJqZWN0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
