Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD33319A14D
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 23:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0IQISBsslVdDYVAlrSQQPq0mRIVFBfXPKcmXAgUiu40=; b=cLg
	ZFQNt1+aODZsYMrUpLEcyki9Wc/JOwIDTqTfkgmsCrGQpbNu70kzBkwlQpGaavYpXo0Oo6ib9nhq6
	1W4rQ/N+eeSqvow39mDPEntfLDh0RZeNoY7HQFZedlq1lWUx5olZX02GJkdVv701xQANrxqdr/a+A
	9VZrh4JNpgQawhG8EbhbtBxl2azfXpMRcBTZ86ZqZ9SnoobMveHGPz4IWKHpYk4F81JVXdC1glzkZ
	smm03ITCHrouB66dX1gzfziDeTkafgCxKFkyLr7Yhsyo39/AVanu8amZifbgCvcoBPEPXYxRR5bSi
	kwsJrKkdOMnH0F20eJXinfBV8OHF8bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOnP-0005wC-TO; Tue, 31 Mar 2020 21:51:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOnI-0005va-QD
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 21:51:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id u10so28058815wro.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar 2020 14:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=H5cNHSo8uB8q74kY/XOWQGDVVkSgT6eevR3bsHZ38PY=;
 b=ZRli9MgeyolCfE8JBRYymvijki8cV7Vh6GGWV+T8cc8/KEw9JEwFb9FADml1VuTM4s
 kcbykz/O8PXgbf/InFqguChh/uHjK0E/8bYF/0JpptJW7IVo3IcsiY52D4UgCsmjujrx
 TyQ66mpljEUUoFlnCqTgUhXUtIBaaL8P6rAVLOR4vhyyS4CIdjsnlpWVev2wLZno8L6i
 dYJte+rXrsXB5YcrN2YRC1Tw9Q+Mva0TqDvNZ2zLhlOzJxCwCY0nZX7Ynu81GYUcXT5l
 5B3lloKIcOPdXSCpMQye1Pddax6HdvkGZ4o2KpKnNH+cpcy+CfXIUOIYplsFEzcBi3hp
 83vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=H5cNHSo8uB8q74kY/XOWQGDVVkSgT6eevR3bsHZ38PY=;
 b=qsKaXO+3HipfEFpB7qHhRzuAdmkfKViOr7oZAxqzVF9o3EMYUusE+8d2+QIoyDFdoS
 GhSrTNXue0DCgAWvR466d0aLdrhT6R3sPdDcA22D1/IvugJybtIH5tkzdSHR0jWo//9Y
 oBkWnC5wOuHtqk8jkFGfTrCoePmF7yE+1qK1faVh9PTRuVeqooLAU4NKzdgyepAquQxO
 OB90ZoGpUIBWTdGXdlXCEbnMqRp6CgZy/NBWlMLqbL8bN10ryGiorwtlPiYyL3OYjH+B
 BnruTs1uMSiGz45d4ctKT8YcRYX0/FMUzzXZtplYqj4mKHQ2sTo30i+C7/mNdwbinBXy
 7j1g==
X-Gm-Message-State: ANhLgQ2V4T5WcF55XEtUp/NJfcKn7P/8CAPye3XTBxXNnlTebF5FzYkm
 wNObn1IGQtiJH1mZ9KaLBxgHvYL0YYmPLR38zMW6jpTCay0=
X-Google-Smtp-Source: ADFU+vvFHHNmk/qTrtOPCAtPindz6ZzyWuoZtWsl1Q6i/9QvNzXYHbyZS6DGglJwzJlUz7qJv2KyaxhPAF2P/hi9YXI=
X-Received: by 2002:adf:f401:: with SMTP id g1mr21745190wro.140.1585691494258; 
 Tue, 31 Mar 2020 14:51:34 -0700 (PDT)
MIME-Version: 1.0
From: Vivek Unune <npcomplete13@gmail.com>
Date: Tue, 31 Mar 2020 17:51:23 -0400
Message-ID: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_145136_908039_D42640F6 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Pin Controller in Northstar
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

SGkgQWxsIC8gUmFmYcWCLAoKSSdtIGFib3V0IHRvIHVwZGF0ZSBkZXZpY2UgdHJlZSBmb3IgTGlu
a3N5cyBQYW5hbWVyYSByb3V0ZXIgKGFrYQpFQTk1MDApIHNvIHRoYXQgaXQgdXNlcyBwaW4gY29u
dHJvbGxlciBkZWZpbmVkIGluIEJDTTUzMDFYLmR0c2kgWzFdLgpIb3dldmVyLCB0aGUgbWFpbmxp
bmUga2VybmVsJ3MgTm9ydGhzdGFyIHBpbmN0cmwgZHJpdmVyIGNvZGUKKG5zLXBpbmN0cmwuY3Mg
WzJdKSBpcyBvdXQgb2Ygc3luYyB3aXRoIHRoZSBkZXZpY2UgdHJlZS4gQXMgeW91IHNlZSwKdGhl
IGRyaXZlciBsb29rcyBmb3Igc3lzY29uIG5vZGUgd2hpY2ggaXMgYWJzZW50IGluIHRoZSBkZXZp
Y2UgdHJlZS4KCldhcyB0aGVyZSBhIHBhdGNoIHN1Ym1pdHRlZCB0byB1cGRhdGUgdGhlIGRldmlj
ZSB0cmVlIGFsb25nIHdpdGggdGhlCmRyaXZlcj8gSSBjb3VsZCBvbmx5IGZpbmQgdGhlIHBhdGNo
IHdydCB0aGUgZHJpdmVyIFszXQoKSWYgdGhlIGRldmljZSB0cmVlIHdhcyBpbmRlZWQgdXBkYXRl
ZCwgd2hpY2ggZ2l0IHJlcG9zaXRvcnkgc2hvdWxkIEkKdXNlIHRvIHByZXBhcmUgYW5kIHRlc3Qg
bXkgcGF0Y2g/CgpUaGFua3MsCgpWaXZlawoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxk
cy9saW51eC9ibG9iL21hc3Rlci9hcmNoL2FybS9ib290L2R0cy9iY201MzAxeC5kdHNpClsyXSBo
dHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVycy9waW5j
dHJsL2JjbS9waW5jdHJsLW5zLmMKWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0
Y2gvMTA3MzU5MzMvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
