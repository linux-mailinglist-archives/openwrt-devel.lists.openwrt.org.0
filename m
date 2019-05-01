Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678DC10537
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 07:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJIrjvU6LNaApwVf1jdvwfi7mS4yDg2ZkYBi6Q2P+Ck=; b=JshlOxqDYG1YOa
	kvHjYlOsuex7cJ+mk63iIQFDrA0SvEgbCUWrCC+iXqaJzOC3aCrzFMwnc02TmCisoinYygOAMqXtf
	0MUfuzG3AQJGcqB2NVUIDfAJHFYMdL39+0+pPmUcyHrb7vlwdDseAHw4YKC3I5f9lN9NySdy6H5F4
	rClmegQGK+wG2fPFBvWdQEf613C18tLDrXL9h4eDfDUp1W3j5g7AdUYRZUudAnvLs3QC7PYMXbZeb
	knGRTwGtsdmwjDIWSfXB3oOgRTGxiQ2YFEH/Y+iobM7mu28jThhyzmlmzo/xQpoWJ7QnSmu86JU84
	O9ZAyKfiNBSpazx+7MJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLhiy-0004li-5Y; Wed, 01 May 2019 05:24:08 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLhip-0004lR-4G
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 05:24:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id v1so12493268lfg.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 30 Apr 2019 22:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z/vltGtWHixWJJ066LHP1cCedPpX3ZzOMZtBuzomBKI=;
 b=jvtnvaIU+BM/zVXE54K3TloXx5Bh1EjU2m7UMXi2pF0krsWHW9oVyTe9NigqrHRU/J
 6KeevQtO2gpYeOnwZtipPww7L1WgxUGu/9zp61M0eCJgHhn7gRjJ1dE+fY+p6NhCopCl
 ryLION6IBf/xJ6Kmcymd+o72VO+b2pIPvDg7AbeFLaw1IghGsZo4m3v9L7LLSMgINzRl
 1JWo7CHgvDAxRsIiK7o+PcuBYfCifUjQF1il1xMpk3DPniKiuy4VRQkH8gIXuuRNYgdo
 VV1/9IxlFRx8zKGuz+C9IZNpVMg4WysDtqVyhK2NRqpBPD8XvDWLO8L8bTDW6yN8hqhP
 artg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z/vltGtWHixWJJ066LHP1cCedPpX3ZzOMZtBuzomBKI=;
 b=l/rn+Y/2UvtGW6/QdlEsTHM3LwD98mC1syLHWlqrz9t/tvO5oCAk9SnLkkr1B8uHYp
 n5rLWN2wq+4ZbIdXvCrQIQGnzDB8CgCR9JDJeqdbRdvBFBhSc6kXYthZg2rwaKPKlMLI
 +llJSp3GKN6dcHywfRyTmagrEo9/uqKFlS/y4dH2FmYW6p8ZgDz2+FOBNc1yALwQOsfJ
 RdwGFBqdTpT9K+cPRYDMTwdDdOisljzEYcXLPh3vXUzoIrZnxtnlBtQjbJPkSZKpUPtM
 ix227YpabggqOWT7jm2oquP2Yvve9KYVoYdZxAwhy2MT2OfXSKJA2R6WmCo/Wl9km1V9
 HBvQ==
X-Gm-Message-State: APjAAAUJuZjvlvP4Xbu7AFfH0/fhuHUE5neEJw5O8jhA6gr7FnauCgIS
 nBjFvuiaTb/wpLU2wLbRj7j6c5nXntk=
X-Google-Smtp-Source: APXvYqxf4PW+NKNW4X/fzd2eX9wG2jApG9bZR7PkKNxPhjCPkN7tjVfkO8SVlu1iQczH4bhlhJBOLA==
X-Received: by 2002:a19:6b0d:: with SMTP id d13mr37147176lfa.79.1556688236550; 
 Tue, 30 Apr 2019 22:23:56 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id k4sm5017469lja.18.2019.04.30.22.23.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 22:23:55 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 07:23:21 +0200
Message-Id: <20190501052321.11985-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_222359_194783_1DC78F39 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] procd: add procd_running() helper for
 checking running state
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBzaG91bGQgYmUg
aGVscGZ1bCBmb3IgaW1wbGVtZW50aW5nIHNlcnZpY2VfcnVubmluZygpIGluIHByb2NkIGluaXQK
c2NyaXB0cy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KLS0tCiBwYWNrYWdlL3N5c3RlbS9wcm9jZC9maWxlcy9wcm9jZC5zaCB8IDE1ICsrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9w
YWNrYWdlL3N5c3RlbS9wcm9jZC9maWxlcy9wcm9jZC5zaCBiL3BhY2thZ2Uvc3lzdGVtL3Byb2Nk
L2ZpbGVzL3Byb2NkLnNoCmluZGV4IDcyZjI1ZmUwYzAuLmFkZTU1YTM0NGYgMTAwNjQ0Ci0tLSBh
L3BhY2thZ2Uvc3lzdGVtL3Byb2NkL2ZpbGVzL3Byb2NkLnNoCisrKyBiL3BhY2thZ2Uvc3lzdGVt
L3Byb2NkL2ZpbGVzL3Byb2NkLnNoCkBAIC0yNiw2ICsyNiw5IEBACiAjIHByb2NkX2Nsb3NlX2lu
c3RhbmNlKCk6CiAjICAgQ29tcGxldGUgdGhlIGluc3RhbmNlIGJlaW5nIHByZXBhcmVkCiAjCisj
IHByb2NkX3J1bm5pbmcoc2VydmljZSwgW2luc3RhbmNlXSk6CisjICAgQ2hlY2tzIGlmIHNlcnZp
Y2UvaW5zdGFuY2UgaXMgY3VycmVudGx5IHJ1bm5pbmcKKyMKICMgcHJvY2Rfa2lsbChzZXJ2aWNl
LCBbaW5zdGFuY2VdKToKICMgICBLaWxsIGEgc2VydmljZSBpbnN0YW5jZSAob3IgYWxsIGluc3Rh
bmNlcykKICMKQEAgLTM5OCw2ICs0MDEsMTggQEAgX3Byb2NkX2FkZF9pbnN0YW5jZSgpIHsKIAlf
cHJvY2RfY2xvc2VfaW5zdGFuY2UKIH0KIAorcHJvY2RfcnVubmluZygpIHsKKwlsb2NhbCBzZXJ2
aWNlPSIkMSIKKwlsb2NhbCBpbnN0YW5jZT0iJHsyOi1pbnN0YW5jZTF9IgorCWxvY2FsIHJ1bm5p
bmcKKworCWpzb25faW5pdAorCWpzb25fYWRkX3N0cmluZyBuYW1lICIkc2VydmljZSIKKwlydW5u
aW5nPSQoX3Byb2NkX3VidXNfY2FsbCBsaXN0IHwganNvbmZpbHRlciAtZSAiQC4kc2VydmljZS5p
bnN0YW5jZXMuJHtpbnN0YW5jZX0ucnVubmluZyIpCisKKwlbICIkcnVubmluZyIgPSAidHJ1ZSIg
XQorfQorCiBfcHJvY2Rfa2lsbCgpIHsKIAlsb2NhbCBzZXJ2aWNlPSIkMSIKIAlsb2NhbCBpbnN0
YW5jZT0iJDIiCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
