Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C537D1B93FC
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 22:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ikteoQkqoAjnjMnrch/B6SUrWTqiIf5+jGZq6fK7rb8=; b=ujHCzGySEiTLKQ
	Hnh7YxrjJMWymAOTRhMG+sOFfHVmwQXsO6i0Ozub79kINJUJIuXPbBaT3q/ebRE43rkygNcBAlCr9
	DDiL5l+rchhC7pBhqE3KTF9DDLok1lqrZpTvZdWer/bzJqargFhw1hrwfT/pDkKoigOfPiKYUpBvs
	91apP8GBOcSgT5p+Iwmm5+kq4teS8HaA8DQVmrc7QxGPa9Oh87kIdhjz31ggrajo7qsRzRYpxF7cM
	jVyCWiM9L+RagXMN45tgKX+kOwg4NQtfKVcfBtLoMaedTomLYZpaWTgyVvnp9B4MQqT7yfYMvJ/cg
	b8+ONFGGAvsshk9JZYeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSo4l-0001VQ-RW; Sun, 26 Apr 2020 20:40:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSo4g-0001UO-3L
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 20:40:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id j2so18162926wrs.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 13:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=02M88a0r3MiVr1EcPBZCsPOKDhdMywCsKoCEZWRSk6M=;
 b=qSsLHl/DfJnt5l6YgUTtzO64io1Zrx+Sh/KuEpEz1mb+ujDoVmvDkxr5RryJYonYkk
 kvYn0LlOY+3UVi3QdIz8wR2298ByVQKZ2xR/wSckcmzAJZ9wIi26wZ2aj87uP/4+b1YH
 R/UMw3Bw/JfGg7oXmyMC2uQx62utgYOhBvczz3A/7syCe6qlthmAoYXQXkwrSGivy3io
 mpQrz+1sQU1lYn1737IBvhQZbpd1EbCD4e8YnDILgjt40XTHwZL9tbjyHVCxoFSgDSTs
 KpYKkdQpZzmPazvpb/zvuAPlfEWSd0AxX7nEJN5IFANZ0x5vWR5nl8PCuZ0HvZuq91hP
 Guiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=02M88a0r3MiVr1EcPBZCsPOKDhdMywCsKoCEZWRSk6M=;
 b=Qa9uIplqZU7tPTbnJPRz6gibZj8XZuMIEXuIbUEUPGiNXfJhB3pvkOMSu5NglEbDUU
 QxegICI65YVG9kUs3nPIwKLXhRZTY0MxaIQpfqa/5Hk3BtuCAvI6UmYQFtgNN3Aojns/
 dOKsjX7slOIK8ZLQpjVGc4GJhGOZ4GRWuoqRL55c0+pN0MpYgvXLYYes7D4UQDPOP2sJ
 nywEMmDulk07JAO9Ys90qO7hF9xgbU4phO6HJZxEMB6XFLWUmEnW1rKsUTFTczM3JpSD
 hEWoGOlFUe6Hw6qAo6cVDHq2Zf+MaxGVW+bmZrV47FycTDQG5CF7MWu8ttEhM/xEm1ot
 SOTg==
X-Gm-Message-State: AGi0PuZca1fV+kwJtR5qTCmh6rhI4Q82MbLC9OfuKRFYtkLVxEKjmQeV
 rNRxMkIqofCmwFf9exBFgixEJWy8
X-Google-Smtp-Source: APiQypLJeG+xnrS/E0RzEJzVNJA/KCKCO+CGgxVlhS+rxv+jCJHCWVlaNoBIw3q6QdyLJsLl7IZNtQ==
X-Received: by 2002:adf:edc6:: with SMTP id v6mr23120623wro.8.1587933611889;
 Sun, 26 Apr 2020 13:40:11 -0700 (PDT)
Received: from tool.localnet ([213.177.195.242])
 by smtp.googlemail.com with ESMTPSA id f63sm12488013wma.47.2020.04.26.13.40.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 13:40:11 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Apr 2020 22:20:24 +0200
Message-ID: <79398488.bS0fr8Jv6B@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_134026_145129_283693DB 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mvebu: LS421DE: dts file improvements
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

LSBEZWxldGUgdXNlbGVzcyBIREQgcHJlc2VuY2UgaW5wdXRzOiB0aGV5IGFyZW4ndCBidXR0b25z
LCBhbmQgcHJvYmFibHkKICB0aGV5IGFyZSBvdXRwdXRzIGluIHRoZSBzdG9jayBmaXJtd2FyZS4K
LSBDaGFuZ2UgdGhlIEZ1bmN0aW9uIEJ1dHRvbiBrZXljb2RlOiB0aGUgY3VycmVudCBvbmUgaXNu
J3QgbWFwcGVkIGJ5CiAgdGhlIGtlcm5lbCBtb2R1bGUuCi0gVXNlIHRoZSByZWNvbW1lbmRlZCBw
cm9wZXJ0eSBuYW1lcyBmb3IgdGhlIGV0aGVybmV0IHN0dWZmLgotIEFkZCBtaXNzaW5nIGkyYyBw
aW5tdXguCi0gTWlub3IgY29zbWV0aWMgY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBH
b256w6FsZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCiAuLi4vYm9vdC9kdHMv
YXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzICAgfCA1MyArKysrKysrKy0tLS0tLS0tLS0t
CiAuLi4vYm9vdC9kdHMvYXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzICAgfCA1MyArKysr
KysrKy0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDYyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5L2Fy
Y2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cyBiL3RhcmdldC9s
aW51eC9tdmVidS9maWxlcy00LjE5L2FyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFs
by1sczQyMWRlLmR0cy4KaW5kZXggNmI4YTk2NGFiMy4uNGQyNzYwZWI3MiAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkvYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM3
MC1idWZmYWxvLWxzNDIxZGUuZHRzCisrKyBiL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5
L2FyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cwpAQCAtNDIs
NyArNDIsNyBAQAogCiAJZ3Bpb19mYW4gewogCQlncGlvcyA9IDwmZ3BpbzAgMTMgR1BJT19BQ1RJ
VkVfSElHSAotCQkJJmdwaW8wIDE0IEdQSU9fQUNUSVZFX0hJR0g+OworCQkJICZncGlvMCAxNCBH
UElPX0FDVElWRV9ISUdIPjsKIAkJYWxhcm0tZ3Bpb3MgPSA8JmdwaW8wIDEwIEdQSU9fQUNUSVZF
X0hJR0g+OwogCX07CiAKQEAgLTUwLDIyICs1MCw5IEBACiAJCWNvbXBhdGlibGUgPSAiZ3Bpby1r
ZXlzIjsKIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCSNzaXplLWNlbGxzID0gPDA+OwotCQlw
aW5jdHJsLTAgPSA8JnBteF9oZGRfcHJlc2VudCAmcG14X2J1dHRvbnM+OworCQlwaW5jdHJsLTAg
PSA8JnBteF9idXR0b25zPjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAotCQloZGQx
LXByZXNlbnQgewotCQkJbGFiZWwgPSAiSEREMSBQcmVzZW50IjsKLQkJCWxpbnV4LGNvZGUgPSA8
S0VZX1BST0cxPjsKLQkJCWdwaW9zID0gPCZncGlvMCAxMSBHUElPX0FDVElWRV9MT1c+OwotCQl9
OwotCi0JCWhkZDItcHJlc2VudCB7Ci0JCQlsYWJlbCA9ICJIREQyIFByZXNlbnQiOwotCQkJbGlu
dXgsY29kZSA9IDxLRVlfUFJPRzI+OwotCQkJZ3Bpb3MgPSA8JmdwaW8wIDEyIEdQSU9fQUNUSVZF
X0xPVz47Ci0KLQkJfTsKLQogCQlwb3dlciB7CiAJCQlsYWJlbCA9ICJQb3dlciBTd2l0Y2giOwog
CQkJbGludXgsY29kZSA9IDxLRVlfUE9XRVI+OwpAQCAtNzUsNyArNjIsNyBAQAogCiAJCWZ1bmN0
aW9uIHsKIAkJCWxhYmVsID0gIkZ1bmN0aW9uIEJ1dHRvbiI7Ci0JCQlsaW51eCxjb2RlID0gPEtF
WV9PUFRJT04+OworCQkJbGludXgsY29kZSA9IDxLRVlfQ09ORklHPjsKIAkJCWdwaW9zID0gPCZn
cGlvMCAxNiBHUElPX0FDVElWRV9MT1c+OwogCQl9OwogCX07CkBAIC0xMzEsMTEgKzExOCwxMSBA
QAogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MD47CiAJCXBpbmN0
cmwtMCA9IDwmcG14X3Bvd2VyX3VzYiAmcG14X3Bvd2VyX2hkZDEgJnBteF9wb3dlcl9oZGQyPjsK
LQogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCi0JCXVzYl92NV9yZWd1bGF0b3I6IHVz
Yi12NS1yZWd1bGF0b3IgeworCQl1c2JfcG93ZXI6IHJlZ3VsYXRvckAwIHsKIAkJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKKwkJCXJlZyA9IDwwPjsKIAkJCXJlZ3VsYXRvci1uYW1l
ID0gIlVTQiI7CiAJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKIAkJCXJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+OwpAQCAtMTQ1LDcgKzEzMiw3IEBACiAJ
CQlncGlvID0gPCZncGlvMCA1IEdQSU9fQUNUSVZFX0hJR0g+OwogCQl9OwogCi0JCWF0YTFfcmVn
dWxhdG9yOiBhdGExLXJlZ3VsYXRvciB7CisJCXNhdGExX3Bvd2VyOiByZWd1bGF0b3JAMSB7CiAJ
CQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCQlyZWcgPSA8MT47CiAJCQlyZWd1
bGF0b3ItbmFtZSA9ICJIREQxIjsKQEAgLTE1OCw3ICsxNDUsNyBAQAogCQkJZ3BpbyA9IDwmZ3Bp
bzAgOCBHUElPX0FDVElWRV9ISUdIPjsKIAkJfTsKIAotCQlhdGEyX3JlZ3VsYXRvcjogYXRhMi1y
ZWd1bGF0b3IgeworCQlzYXRhMl9wb3dlcjogcmVndWxhdG9yQDIgewogCQkJY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwogCQkJcmVnID0gPDI+OwogCQkJcmVndWxhdG9yLW5hbWUgPSAi
SEREMiI7CkBAIC0xODMsMTEgKzE3MCwxMyBAQAogCXBpbmN0cmwtMCA9IDwmZ2UxX3JnbWlpX3Bp
bnM+OwogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJc3RhdHVzID0gIm9rYXkiOwotCXBo
eSA9IDwmcGh5MD47Ci0JcGh5LW1vZGUgPSAicmdtaWktaWQiOworCXBoeS1oYW5kbGUgPSA8JmV0
aHBoeTA+OworCXBoeS1jb25uZWN0aW9uLXR5cGUgPSAicmdtaWktaWQiOwogfTsKIAogJmkyYzAg
eworCXBpbmN0cmwtMCA9IDwmaTJjMF9waW5zPjsKKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OwogCWNsb2NrLWZyZXF1ZW5jeSA9IDwxMDAwMDA+OwogCXN0YXR1cyA9ICJva2F5IjsKIApAQCAt
MjAxLDE2ICsxOTAsMTggQEAKIAlwaW5jdHJsLTAgPSA8Jm1kaW9fcGlucz47CiAJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKIAotCXBoeTA6IGV0aGVybmV0LXBoeUAwIHsgLyogTWFydmVsbCA4
OEUxNTE4ICovCisJZXRocGh5MDogZXRoZXJuZXQtcGh5QDAgeyAvKiBNYXJ2ZWxsIDg4RTE1MTgg
Ki8KIAkJcmVnID0gPDA+OwotCQkvKiBMRUQyIGlzIHVzZWQgdG8gaW5mb3JtIHVCb290IGlmIHRo
ZSBwb3dlci1zd2l0Y2ggd2FzIHNsaWRlZAotCQkgICB0byB0aGUgIm9mZiIgcG9zaXRpb24sIGFu
ZCB0aGVuIHBvd2VyIG9mZiB0aGUgbWFjaGluZS4KLQkJICAgUGFnZSAweDMsIFJlZ2lzdGVyIDB4
MTAsIGJpdCA4OgotCQkJCTB4ODAwOiBMRUQyIG9mZiwgcG93ZXIgb2ZmIHRoZSBtYWNoaW5lCi0J
CQkJMHg5MDA6IExFRDIgb24sIGJvb3QgdGhlIG1hY2hpbmUgKi8KLQkJbWFydmVsbCxyZWctaW5p
dCA9IDwweDMgMHgxMCAweDEgMHgxOTkxPiwgLyogTEVEIEZ1bmN0aW9uICovCi0JCQkJCTwweDMg
MHgxMSAweDEgMHg0NDAxPiwgLyogTEVEIHBvbGFyaXR5ICovCi0JCQkJCTwweDMgMHgxMiAweDEg
MHg0OTA1PjsgLyogTEVEIFRpbWVyICovCisJCS8qCisJCSAqIExFRDIgaXMgdXNlZCB0byBpbmZv
cm0sIGF0IHJlc3RhcnQgdGltZSwgaWYgdGhlIHBvd2VyCisJCSAqIHN3aXRjaCB3YXMgc2xpZGVk
IHRvIHRoZSAib2ZmIiBwb3NpdGlvbi4KKwkJICogUGFnZSAweDMsIFJlZ2lzdGVyIDB4MTAsIGJp
dHMgOC0xMToKKwkJICogICAgIDB4ODAwOiBMRUQyIG9mZiwgcG93ZXIgb2ZmIHRoZSBtYWNoaW5l
CisJCSAqICAgICAweDkwMDogTEVEMiBvbiwgYm9vdCB0aGUgbWFjaGluZQorCQkgKi8KKwkJbWFy
dmVsbCxyZWctaW5pdCA9IDwweDMgMHgxMCAweDEgMHgxOTkxPiwgLyogTEVEIGZ1bmN0aW9uICov
CisJCQkJICAgPDB4MyAweDExIDB4MSAweDQ0MDE+LCAvKiBMRUQgcG9sYXJpdHkgKi8KKwkJCQkg
ICA8MHgzIDB4MTIgMHgxIDB4NDkwNT47IC8qIExFRCB0aW1lciAqLwogCX07CiB9OwogCmRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNS40L2FyY2gvYXJtL2Jvb3QvZHRzL2Fy
bWFkYS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cyBiL3RhcmdldC9saW51eC9tdmVidS9maWxlcy01
LjQvYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzCmluZGV4
IDZiOGE5NjRhYjMuLjRkMjc2MGViNzIgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9tdmVidS9m
aWxlcy01LjQvYXJjaC9hcm0vYm9vdC9kdHMvYXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRz
CisrKyBiL3RhcmdldC9saW51eC9tdmVidS9maWxlcy01LjQvYXJjaC9hcm0vYm9vdC9kdHMvYXJt
YWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzCkBAIC00Miw3ICs0Miw3IEBACiAKIAlncGlvX2Zh
biB7CiAJCWdwaW9zID0gPCZncGlvMCAxMyBHUElPX0FDVElWRV9ISUdICi0JCQkmZ3BpbzAgMTQg
R1BJT19BQ1RJVkVfSElHSD47CisJCQkgJmdwaW8wIDE0IEdQSU9fQUNUSVZFX0hJR0g+OwogCQlh
bGFybS1ncGlvcyA9IDwmZ3BpbzAgMTAgR1BJT19BQ1RJVkVfSElHSD47CiAJfTsKIApAQCAtNTAs
MjIgKzUwLDkgQEAKIAkJY29tcGF0aWJsZSA9ICJncGlvLWtleXMiOwogCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MD47Ci0JCXBpbmN0cmwtMCA9IDwmcG14X2hkZF9w
cmVzZW50ICZwbXhfYnV0dG9ucz47CisJCXBpbmN0cmwtMCA9IDwmcG14X2J1dHRvbnM+OwogCQlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCi0JCWhkZDEtcHJlc2VudCB7Ci0JCQlsYWJlbCA9
ICJIREQxIFByZXNlbnQiOwotCQkJbGludXgsY29kZSA9IDxLRVlfUFJPRzE+OwotCQkJZ3Bpb3Mg
PSA8JmdwaW8wIDExIEdQSU9fQUNUSVZFX0xPVz47Ci0JCX07Ci0KLQkJaGRkMi1wcmVzZW50IHsK
LQkJCWxhYmVsID0gIkhERDIgUHJlc2VudCI7Ci0JCQlsaW51eCxjb2RlID0gPEtFWV9QUk9HMj47
Ci0JCQlncGlvcyA9IDwmZ3BpbzAgMTIgR1BJT19BQ1RJVkVfTE9XPjsKLQotCQl9OwotCiAJCXBv
d2VyIHsKIAkJCWxhYmVsID0gIlBvd2VyIFN3aXRjaCI7CiAJCQlsaW51eCxjb2RlID0gPEtFWV9Q
T1dFUj47CkBAIC03NSw3ICs2Miw3IEBACiAKIAkJZnVuY3Rpb24gewogCQkJbGFiZWwgPSAiRnVu
Y3Rpb24gQnV0dG9uIjsKLQkJCWxpbnV4LGNvZGUgPSA8S0VZX09QVElPTj47CisJCQlsaW51eCxj
b2RlID0gPEtFWV9DT05GSUc+OwogCQkJZ3Bpb3MgPSA8JmdwaW8wIDE2IEdQSU9fQUNUSVZFX0xP
Vz47CiAJCX07CiAJfTsKQEAgLTEzMSwxMSArMTE4LDExIEBACiAJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OwogCQkjc2l6ZS1jZWxscyA9IDwwPjsKIAkJcGluY3RybC0wID0gPCZwbXhfcG93ZXJfdXNi
ICZwbXhfcG93ZXJfaGRkMSAmcG14X3Bvd2VyX2hkZDI+OwotCiAJCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7CiAKLQkJdXNiX3Y1X3JlZ3VsYXRvcjogdXNiLXY1LXJlZ3VsYXRvciB7CisJCXVz
Yl9wb3dlcjogcmVndWxhdG9yQDAgewogCQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQi
OworCQkJcmVnID0gPDA+OwogCQkJcmVndWxhdG9yLW5hbWUgPSAiVVNCIjsKIAkJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+OwogCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8NTAwMDAwMD47CkBAIC0xNDUsNyArMTMyLDcgQEAKIAkJCWdwaW8gPSA8JmdwaW8wIDUgR1BJ
T19BQ1RJVkVfSElHSD47CiAJCX07CiAKLQkJYXRhMV9yZWd1bGF0b3I6IGF0YTEtcmVndWxhdG9y
IHsKKwkJc2F0YTFfcG93ZXI6IHJlZ3VsYXRvckAxIHsKIAkJCWNvbXBhdGlibGUgPSAicmVndWxh
dG9yLWZpeGVkIjsKIAkJCXJlZyA9IDwxPjsKIAkJCXJlZ3VsYXRvci1uYW1lID0gIkhERDEiOwpA
QCAtMTU4LDcgKzE0NSw3IEBACiAJCQlncGlvID0gPCZncGlvMCA4IEdQSU9fQUNUSVZFX0hJR0g+
OwogCQl9OwogCi0JCWF0YTJfcmVndWxhdG9yOiBhdGEyLXJlZ3VsYXRvciB7CisJCXNhdGEyX3Bv
d2VyOiByZWd1bGF0b3JAMiB7CiAJCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJ
CQlyZWcgPSA8Mj47CiAJCQlyZWd1bGF0b3ItbmFtZSA9ICJIREQyIjsKQEAgLTE4MywxMSArMTcw
LDEzIEBACiAJcGluY3RybC0wID0gPCZnZTFfcmdtaWlfcGlucz47CiAJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKIAlzdGF0dXMgPSAib2theSI7Ci0JcGh5ID0gPCZwaHkwPjsKLQlwaHktbW9k
ZSA9ICJyZ21paS1pZCI7CisJcGh5LWhhbmRsZSA9IDwmZXRocGh5MD47CisJcGh5LWNvbm5lY3Rp
b24tdHlwZSA9ICJyZ21paS1pZCI7CiB9OwogCiAmaTJjMCB7CisJcGluY3RybC0wID0gPCZpMmMw
X3BpbnM+OworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJY2xvY2stZnJlcXVlbmN5ID0g
PDEwMDAwMD47CiAJc3RhdHVzID0gIm9rYXkiOwogCkBAIC0yMDEsMTYgKzE5MCwxOCBAQAogCXBp
bmN0cmwtMCA9IDwmbWRpb19waW5zPjsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCi0J
cGh5MDogZXRoZXJuZXQtcGh5QDAgeyAvKiBNYXJ2ZWxsIDg4RTE1MTggKi8KKwlldGhwaHkwOiBl
dGhlcm5ldC1waHlAMCB7IC8qIE1hcnZlbGwgODhFMTUxOCAqLwogCQlyZWcgPSA8MD47Ci0JCS8q
IExFRDIgaXMgdXNlZCB0byBpbmZvcm0gdUJvb3QgaWYgdGhlIHBvd2VyLXN3aXRjaCB3YXMgc2xp
ZGVkCi0JCSAgIHRvIHRoZSAib2ZmIiBwb3NpdGlvbiwgYW5kIHRoZW4gcG93ZXIgb2ZmIHRoZSBt
YWNoaW5lLgotCQkgICBQYWdlIDB4MywgUmVnaXN0ZXIgMHgxMCwgYml0IDg6Ci0JCQkJMHg4MDA6
IExFRDIgb2ZmLCBwb3dlciBvZmYgdGhlIG1hY2hpbmUKLQkJCQkweDkwMDogTEVEMiBvbiwgYm9v
dCB0aGUgbWFjaGluZSAqLwotCQltYXJ2ZWxsLHJlZy1pbml0ID0gPDB4MyAweDEwIDB4MSAweDE5
OTE+LCAvKiBMRUQgRnVuY3Rpb24gKi8KLQkJCQkJPDB4MyAweDExIDB4MSAweDQ0MDE+LCAvKiBM
RUQgcG9sYXJpdHkgKi8KLQkJCQkJPDB4MyAweDEyIDB4MSAweDQ5MDU+OyAvKiBMRUQgVGltZXIg
Ki8KKwkJLyoKKwkJICogTEVEMiBpcyB1c2VkIHRvIGluZm9ybSwgYXQgcmVzdGFydCB0aW1lLCBp
ZiB0aGUgcG93ZXIKKwkJICogc3dpdGNoIHdhcyBzbGlkZWQgdG8gdGhlICJvZmYiIHBvc2l0aW9u
LgorCQkgKiBQYWdlIDB4MywgUmVnaXN0ZXIgMHgxMCwgYml0cyA4LTExOgorCQkgKiAgICAgMHg4
MDA6IExFRDIgb2ZmLCBwb3dlciBvZmYgdGhlIG1hY2hpbmUKKwkJICogICAgIDB4OTAwOiBMRUQy
IG9uLCBib290IHRoZSBtYWNoaW5lCisJCSAqLworCQltYXJ2ZWxsLHJlZy1pbml0ID0gPDB4MyAw
eDEwIDB4MSAweDE5OTE+LCAvKiBMRUQgZnVuY3Rpb24gKi8KKwkJCQkgICA8MHgzIDB4MTEgMHgx
IDB4NDQwMT4sIC8qIExFRCBwb2xhcml0eSAqLworCQkJCSAgIDwweDMgMHgxMiAweDEgMHg0OTA1
PjsgLyogTEVEIHRpbWVyICovCiAJfTsKIH07CiAKLS0gCjIuMjYuMgoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
