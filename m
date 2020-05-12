Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A911CECE0
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 08:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xu1tPEYsxiQELnw5AybgnmbpHPP5syNkIdGJmk/UAH8=; b=ZAXr2kR4cJUfkyJaRQEEIQGfC6
	XVaExZVhyi5VeOfw3lo+qsgzAxaO1aLZciiMMlz0N0TDM+jrb+cb3kudVy37FUvvLNHq+cMK4AEn5
	MRiwPfoxQLaXqE3hQyTS/EPcKANYqme5/NISL2GK+e2b9nMzOKq42A4KtmCwSyKog+ZwuYOQkgPg3
	9Zowb+qfq2SWH6fSXTY6nX7nOFYSWOECFgTv1YQ3QG5uNFFQrzVoLgrqxWh+Yj94uMXjpXALSxR3e
	20tP29w248LW0tjl6xI2Efgyx8ne/oA5EsNL0tcopDNL7ByySSwcRteTwSb9zLqxmaSQ1BWUykShn
	l3YVEXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYODT-0003KC-G9; Tue, 12 May 2020 06:16:35 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYODK-0003J9-S5
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 06:16:28 +0000
Received: by mail-yb1-xb30.google.com with SMTP id r14so6384982ybm.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 23:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=v237cMmsIB6p65g8+QPgh1SBnMHNSXmP5rKeS109sL8=;
 b=YwIke+xt9rMbfwPq1OvpfQAWQY5JRtCajbEM+Xxy0Jch+SkQbIIsvCCcA2L5LX32tB
 mZiw3ps+hxKahlnaNb8IKSs+7xe6K9ZLzP02HEUORi7QTU2gIrOn91mjrtG+H0hWJLka
 r0Jgx9odid1LME6IUjS0aNp9KMRhcXBP+oRgVdgHX03aEUrJuLgtmTGHKreKvTSGUXRT
 +k1SqkNHwR33TwdADEJvnkSFRN49T3oR/+GjqFGgONpYmXG6H29K/muMrjGhVLCPPa94
 RCvYR8IRZXOwczOWggZ9c1DuPDaUxIWv86EFud1cL1nNvfsKYLB7uJTIHlpPQ6u7NYh9
 s/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=v237cMmsIB6p65g8+QPgh1SBnMHNSXmP5rKeS109sL8=;
 b=CY1jb3YqogzfUp3+EXjYgxckH2Nm+chFH9tDGwbNN6BsMEcJ8xpVS7tXqygOMMAsni
 YmBLAwUerHjq/VebaQGZ1lqIjb+3rZuOXiNho4PwaWQC0P5HB0EY+tweDDubQRcoJfBN
 6Y2ryTAYLBdCykbI4Rm2rSotqCOvJX8CWxw1Kbll95E+9a+HeEJPai4TsWPskY1fzqpb
 ypX52j5Ys8seY/YF6zZ5ISzCZseGiU1WkBSgxqYUmhCELaUg3ydwtfRR9pKrkMFVqLFP
 OBFXhD8sGYsPoErn22f5SmftcpdXfUsvMiv7PL2TClAHiM7bAuHXhs+byvc8gNEMnZ+A
 iA+A==
X-Gm-Message-State: AGi0Pub+BDHaddhg9eleCyCOoStmmQjxgwiHr4sdt0WPWjco12EheWCb
 curoxt8xLBB0FujIEbxt69ITOD+ZLAzbGnQXJ/IV8AO6
X-Google-Smtp-Source: APiQypKVNS0pXhsSKk4pQ2NU0lposPIPlPaIbahMiycSiaNI1TwrAo3KKd1u14BDtLj3Yl3c02evcKhBmxNfKZpFFWQ=
X-Received: by 2002:a25:bc46:: with SMTP id d6mr18339435ybk.2.1589264180591;
 Mon, 11 May 2020 23:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6rz=BYYPVzFPdPU6qtr5+i56qA1POYUrbTCKsS1r0a8jrw@mail.gmail.com>
In-Reply-To: <CACna6rz=BYYPVzFPdPU6qtr5+i56qA1POYUrbTCKsS1r0a8jrw@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 12 May 2020 08:16:08 +0200
Message-ID: <CACna6rzTGm-5BTL7-H=Srva-7GJp7v9X2a9Nnm19L3vT+eu3Bw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_231626_907794_4F7477A6 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b30 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Problem with blockd starting after partitions
 mounting
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

T24gU3VuLCAyOSBEZWMgMjAxOSBhdCAxNTozNSwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPiBBIHllYXIgYWdvIEkgaW50cm9kdWNlZCBob3RwbHVnLmQgc2NyaXB0
IG1lYW50IHRvIG1hbmFnZSBTYW1iYSBzaGFyZXMKPiBpbiBhIGNsZXZlciB3YXkgYnk6Cj4gMSkg
VXNpbmcgIm1vdW50IiBob3RwbHVnLmQgZXZlbnQKPiAyKSBHZXR0aW5nIG1vdW50IGluZm8gZnJv
bSBibG9ja2QKPgo+IFJlbGV2YW50IGNvbW1pdCBlZjFlZmE3NTZlMGQgKCJzYW1iYTM2OiBhZGQg
cGFja2FnZSB3aXRoIGhvdHBsdWcuZAo+IHNjcmlwdCBmb3IgYXV0byBzaGFyaW5nIik6Cj4gaHR0
cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdGRpZmY7
aD1lZjFlZmE3NTZlMGQwY2FlZjQxMjE2NzE5ZGNjNzJjNzFiMzFkOGZmCj4KPiBUb2RheSBJIHJl
YWxpemVkIGl0IGRvZXNuJ3Qgd29yayBmb3IgcGFydGl0aW9ucyBtb3VudGVkIGF0IGJvb3QgdGlt
ZQo+IGFzIGJsb2NrZCBpc24ndCBydW5uaW5nIHRoZW4gYW5kICJ1YnVzIGNhbGwgYmxvY2sgaW5m
byIgc2ltcGx5IGZhaWxzLgo+Cj4gIm1vdW50IiBob3RwbHVnLmQgZXZlbnRzIGF0IGJvb3QgdGlt
ZSBhcmUgZ2VuZXJhdGVkIGJ5Ogo+IDEpIC9ldGMvaG90cGx1Zy5kL2Jsb2NrLzEwLW1vdW50IGNh
bGxpbmcgL3NiaW4vYmxvY2sgaG90cGx1Zwo+IDIpIC9zYmluL2Jsb2NrIGhvdHBsdWcgY2FsbGlu
ZyAvc2Jpbi9ob3RwbHVnLWNhbGwgbW91bnQKPgo+IFNvIGl0J3Mgbm90IGEgbWF0dGVyIG9mIGlu
aXQuZCBvcmRlciBhbmQgYWRqdXN0aW5nIFNUQVJUIGluCj4gL2V0Yy9pbml0LmQvYmxvY2tkIChi
bG9jayBkZXZpY2VzIGFwcGVhciBFQVJMWSkuCj4KPiBBbnkgaWRlYSBob3cgdG8gc29sdmUgdGhp
cyBwcm9ibGVtPyBTaG91bGQgd2UgbWF5YmUgcG9zdHBvbmUgIm1vdW50Igo+IGV2ZW50cz8gRS5n
LiB1bnRpbCAiYmxvY2tkIiBzdGFydD8gT3Igc2hvdWxkIGhvdHBsdWcuZCBzY3JpcHQgc29tZWhv
dwo+IHdhaXQgdW50aWwgImJsb2NrZCIgc3RhcnRzPwoKRm9yIGEgcmVmZXJlbmNlIHRoaXMgd2Fz
IGZpeGVkIGJ5IDlhYjkzNmQ5NzNkZiAoImJsb2NrKGQpOiBhbHdheXMgY2FsbApob3RwbHVnLmQg
Im1vdW50IiBzY3JpcHRzIGZyb20gYmxvY2tkIik6Cmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9w
PXByb2plY3QvZnN0b29scy5naXQ7YT1jb21taXRkaWZmO2g9OWFiOTM2ZDk3M2RmYmVlMWY4MDg5
Njc5YTliMGQwYzg3OGI5ODdlOQoKLS0gClJhZmHFggoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
