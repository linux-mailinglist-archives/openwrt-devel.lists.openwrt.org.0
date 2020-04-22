Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2D41B4FB0
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 23:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GCEWMk9F6t2u1X5jfb/zKj6nbEfJjFZB7+Q98a6BUQw=; b=sg7CUHgiZWHHzC
	MuxgMlkHkkPKA4PsbYPKS4M0KTaL4ApT2V8mFL0byeo4Ei4vFTdTaiZkiAkccEZiWAO92Az1Gp4bA
	FUbHAQYr3qLH7T70A95O5RubQo7rpBsgGSzTimFsuJ5n29NVWywC6JOAWClkyVgkJIBB9RO6o0Ovs
	yy3nw9f9PnY6YhJp14ryjkQtf49//p53558pwTDZLqc+mzMKX2GKUD1D1xeVVTNpz6BMyfOAKKJl0
	JiggdyJfQKNP/sild0nErpnAsV9iiHGLseHrsei3+jFixpzFOweEZASzDaKEzdsM7EBMILTmVpixu
	kweSSM0eZCf4UOqG3+NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRNNU-0001u1-0d; Wed, 22 Apr 2020 21:57:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRNNL-0001t9-9f
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 21:57:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id 188so4251387wmc.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Apr 2020 14:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+1gRe1EnL0ouVveraybh0qU1MWEjEguHgtEpQC44bQI=;
 b=CsYOXt9TBGpjWPLEvMppy6wdGFpIM9xCgNWEitVO8ZDntwFQinEF+r3bOEOVR4DD3u
 inQ1KyMYiIm+CFAgMpRtMgAiQ8vID1miqCzbAvus0EoKq0rzuY4XOrT72jBwJS9ZKD67
 EoxZ3nfRTUfnCwSbMygmdcjaabdjXtuIwX+ZU2ruUFPPOYF5q9EQPTldzDpezqDdPqkp
 FsewrO5lTJx+4xJ5xHTVAZC8ox3w9Ym+NC0rjhsqPWnqH62zEOLkrIxf22JeXUw2vSeQ
 u2BGhm1SNoacWqcX74tAR5OSdFuWGQSVFTUOqatfgA7vHLaBuf6JML1x4XomVBidv0If
 0lcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+1gRe1EnL0ouVveraybh0qU1MWEjEguHgtEpQC44bQI=;
 b=i0EfqiL5De3YbujU6fR4JgggynYnLX8UhXlXMNY7D7nllk4GVRCR6sBEaI2QgoPqDt
 ZnBM2AQjfrCw+E1CkdzbxIvVlIIoqQbFY2U8KpkOQ2Z0fPwbwtPGEkTQRMU1nj7odtgJ
 VT0IiUJVPhb2YBcPcTmPlJHhBhWoJ+/Y3oc9Gy5f/oIOClVQuBr5rP5fy1t0XHiyuz2O
 +s127RQC2rJksNdOW3sxFBi739T1LEVK5aC9WsM85AfeLbG4o8UxruRrqLxtWFYwQ2DB
 s9CEbBm2DzjPKEhiCi1B6xY5AS4gIZSMX4MElO2aPBKYdrMmRMyNg00GoVOJrnuFJFcI
 ukig==
X-Gm-Message-State: AGi0PuZi9ncFiBQhHtyE9mCzR+WqjHn1bbxv4yJdxC4kpwahT0e/WOK2
 oCyfzhBBbJFwDd90mEHJi83Rt/zM
X-Google-Smtp-Source: APiQypLQb5qfwx4FGRnSuFXGkLco92z15OX5GZ8Ca6kcLn213wqXiOqPfJRnQVeWTdma6j4lDlY/kQ==
X-Received: by 2002:a1c:32c7:: with SMTP id y190mr614823wmy.13.1587592664263; 
 Wed, 22 Apr 2020 14:57:44 -0700 (PDT)
Received: from tool.localnet ([213.177.195.242])
 by smtp.googlemail.com with ESMTPSA id b22sm9316815wmj.1.2020.04.22.14.57.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 14:57:43 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 22 Apr 2020 23:42:24 +0200
Message-ID: <1969825.PYKUYFuaPT@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_145747_339824_B639A3AB 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] mvebu: LS421DE: add
 linkstation-poweroff module
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

VGhlIEJ1ZmZhbG8gTGlua1N0YXRpb24gTFM0MjFERSBoYXMgdGhlIHBvd2VyIG9mZiBmdW5jdGlv
biBicm9rZW4KCkZpeCBpdCBieSBpbmNsdWRpbmcgdGhlIGxpbmtzdGF0aW9uLXBvd2Vyb2ZmIG1v
ZHVsZSB0byB0aGUgaW1hZ2UgY3JlYXRpb24KYW5kIGFkZGluZyBpdCB0byB0aGUgZGV2aWNlIHRy
ZWUgZmlsZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2Ni
dWV1QGdtYWlsLmNvbT4KLS0tCiAuLi4vYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFsby1s
czQyMWRlLmR0cyB8IDE3ICsrKysrKysrLS0tLS0tLS0tCiAuLi4vYXJtL2Jvb3QvZHRzL2FybWFk
YS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cyB8IDE3ICsrKysrKysrLS0tLS0tLS0tCiB0YXJnZXQv
bGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTkubWsgICAgICAgICAgICB8ICA1ICsrKy0tCiAzIGZp
bGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5L2FyY2gvYXJtL2Jvb3QvZHRzL2FybWFk
YS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cyBiL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5
L2FyY2gvYXJtL2Jvb3QvZHRzL2FybWFkYS0zNzAtYnVmZmFsby1sczQyMWRlLmR0cwppbmRleCA2
YjhhOTY0YWIzLi4yMTJjMDVjMTViIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvbXZlYnUvZmls
ZXMtNC4xOS9hcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFkZS5kdHMK
KysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkvYXJjaC9hcm0vYm9vdC9kdHMvYXJt
YWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzCkBAIC0xNzIsMTAgKzE3Miw5IEBACiAJCX07CiAJ
fTsKIAotCS8qIEZJWE1FOiB0aGlzIGRyaXZlciBuZWVkcyB0byBiZSBhd2FyZSBvZiB0aGUgTEVE
MiBldGggcGh5IHVzZSwKLQkgICB3aGljaCBtdXN0IGJlIHNldCB0byBvZmYgc3RhdGUgYmVmb3Jl
IHNodXR0aW5nIGRvd24gdGhlIG1hY2hpbmUgKi8KIAlyZXN0YXJ0X3Bvd2Vyb2ZmIHsKLQkJY29t
cGF0aWJsZSA9ICJyZXN0YXJ0LXBvd2Vyb2ZmIjsKKwkJY29tcGF0aWJsZSA9ICJsaW5rc3RhdGlv
bixwb3dlci1vZmYiOworCQlwaHktaGFuZGxlLGxlZCA9IDwmZXRocGh5MD47CiAJfTsKIH07CiAK
QEAgLTE4Myw4ICsxODIsOCBAQAogCXBpbmN0cmwtMCA9IDwmZ2UxX3JnbWlpX3BpbnM+OwogCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJc3RhdHVzID0gIm9rYXkiOwotCXBoeSA9IDwmcGh5
MD47Ci0JcGh5LW1vZGUgPSAicmdtaWktaWQiOworCXBoeS1oYW5kbGUgPSA8JmV0aHBoeTA+Owor
CXBoeS1jb25uZWN0aW9uLXR5cGUgPSAicmdtaWktaWQiOwogfTsKIAogJmkyYzAgewpAQCAtMjAx
LDExICsyMDAsMTEgQEAKIAlwaW5jdHJsLTAgPSA8Jm1kaW9fcGlucz47CiAJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKIAotCXBoeTA6IGV0aGVybmV0LXBoeUAwIHsgLyogTWFydmVsbCA4OEUx
NTE4ICovCisJZXRocGh5MDogZXRoZXJuZXQtcGh5QDAgeyAvKiBNYXJ2ZWxsIDg4RTE1MTggKi8K
IAkJcmVnID0gPDA+OwotCQkvKiBMRUQyIGlzIHVzZWQgdG8gaW5mb3JtIHVCb290IGlmIHRoZSBw
b3dlci1zd2l0Y2ggd2FzIHNsaWRlZAotCQkgICB0byB0aGUgIm9mZiIgcG9zaXRpb24sIGFuZCB0
aGVuIHBvd2VyIG9mZiB0aGUgbWFjaGluZS4KLQkJICAgUGFnZSAweDMsIFJlZ2lzdGVyIDB4MTAs
IGJpdCA4OgorCQkvKiBMRUQyIGlzIHVzZWQgdG8gaW5mb3JtLCBhZnRlciByZXN0YXJ0aW5nLCBp
ZiB0aGUgcG93ZXItc3dpdGNoCisJCSAgIHdhcyBzbGlkZWQgdG8gdGhlICJvZmYiIHBvc2l0aW9u
LCBhbmQgdGhlbiBwb3dlciBvZmYgdGhlIG1hY2hpbmUuCisJCSAgIFBhZ2UgMHgzLCBSZWdpc3Rl
ciAweDEwLCBiaXRzIDgtMTE6CiAJCQkJMHg4MDA6IExFRDIgb2ZmLCBwb3dlciBvZmYgdGhlIG1h
Y2hpbmUKIAkJCQkweDkwMDogTEVEMiBvbiwgYm9vdCB0aGUgbWFjaGluZSAqLwogCQltYXJ2ZWxs
LHJlZy1pbml0ID0gPDB4MyAweDEwIDB4MSAweDE5OTE+LCAvKiBMRUQgRnVuY3Rpb24gKi8KZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9maWxlcy01LjQvYXJjaC9hcm0vYm9vdC9kdHMv
YXJtYWRhLTM3MC1idWZmYWxvLWxzNDIxZGUuZHRzIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVz
LTUuNC9hcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFkZS5kdHMKaW5k
ZXggNmI4YTk2NGFiMy4uMjEyYzA1YzE1YiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1
L2ZpbGVzLTUuNC9hcmNoL2FybS9ib290L2R0cy9hcm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFkZS5k
dHMKKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTUuNC9hcmNoL2FybS9ib290L2R0cy9h
cm1hZGEtMzcwLWJ1ZmZhbG8tbHM0MjFkZS5kdHMKQEAgLTE3MiwxMCArMTcyLDkgQEAKIAkJfTsK
IAl9OwogCi0JLyogRklYTUU6IHRoaXMgZHJpdmVyIG5lZWRzIHRvIGJlIGF3YXJlIG9mIHRoZSBM
RUQyIGV0aCBwaHkgdXNlLAotCSAgIHdoaWNoIG11c3QgYmUgc2V0IHRvIG9mZiBzdGF0ZSBiZWZv
cmUgc2h1dHRpbmcgZG93biB0aGUgbWFjaGluZSAqLwogCXJlc3RhcnRfcG93ZXJvZmYgewotCQlj
b21wYXRpYmxlID0gInJlc3RhcnQtcG93ZXJvZmYiOworCQljb21wYXRpYmxlID0gImxpbmtzdGF0
aW9uLHBvd2VyLW9mZiI7CisJCXBoeS1oYW5kbGUsbGVkID0gPCZldGhwaHkwPjsKIAl9OwogfTsK
IApAQCAtMTgzLDggKzE4Miw4IEBACiAJcGluY3RybC0wID0gPCZnZTFfcmdtaWlfcGlucz47CiAJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlzdGF0dXMgPSAib2theSI7Ci0JcGh5ID0gPCZw
aHkwPjsKLQlwaHktbW9kZSA9ICJyZ21paS1pZCI7CisJcGh5LWhhbmRsZSA9IDwmZXRocGh5MD47
CisJcGh5LWNvbm5lY3Rpb24tdHlwZSA9ICJyZ21paS1pZCI7CiB9OwogCiAmaTJjMCB7CkBAIC0y
MDEsMTEgKzIwMCwxMSBAQAogCXBpbmN0cmwtMCA9IDwmbWRpb19waW5zPjsKIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwogCi0JcGh5MDogZXRoZXJuZXQtcGh5QDAgeyAvKiBNYXJ2ZWxsIDg4
RTE1MTggKi8KKwlldGhwaHkwOiBldGhlcm5ldC1waHlAMCB7IC8qIE1hcnZlbGwgODhFMTUxOCAq
LwogCQlyZWcgPSA8MD47Ci0JCS8qIExFRDIgaXMgdXNlZCB0byBpbmZvcm0gdUJvb3QgaWYgdGhl
IHBvd2VyLXN3aXRjaCB3YXMgc2xpZGVkCi0JCSAgIHRvIHRoZSAib2ZmIiBwb3NpdGlvbiwgYW5k
IHRoZW4gcG93ZXIgb2ZmIHRoZSBtYWNoaW5lLgotCQkgICBQYWdlIDB4MywgUmVnaXN0ZXIgMHgx
MCwgYml0IDg6CisJCS8qIExFRDIgaXMgdXNlZCB0byBpbmZvcm0sIGFmdGVyIHJlc3RhcnRpbmcs
IGlmIHRoZSBwb3dlci1zd2l0Y2gKKwkJICAgd2FzIHNsaWRlZCB0byB0aGUgIm9mZiIgcG9zaXRp
b24sIGFuZCB0aGVuIHBvd2VyIG9mZiB0aGUgbWFjaGluZS4KKwkJICAgUGFnZSAweDMsIFJlZ2lz
dGVyIDB4MTAsIGJpdHMgOC0xMToKIAkJCQkweDgwMDogTEVEMiBvZmYsIHBvd2VyIG9mZiB0aGUg
bWFjaGluZQogCQkJCTB4OTAwOiBMRUQyIG9uLCBib290IHRoZSBtYWNoaW5lICovCiAJCW1hcnZl
bGwscmVnLWluaXQgPSA8MHgzIDB4MTAgMHgxIDB4MTk5MT4sIC8qIExFRCBGdW5jdGlvbiAqLwpk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE5Lm1rIGIvdGFyZ2V0
L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE5Lm1rCmluZGV4IDRhYjZmNGE3ZTguLjc3YmUwNzgw
MWQgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0ZXhhOS5taworKysg
Yi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4YTkubWsKQEAgLTE3LDggKzE3LDkgQEAg
ZGVmaW5lIERldmljZS9idWZmYWxvX2xzNDIxZGUKICAgS0VSTkVMX0lOSVRSQU1GUyA6PSBrZXJu
ZWwtYmluIHwgYXBwZW5kLWR0YiB8IHVJbWFnZSBub25lCiAgIERFVklDRV9EVFMgOj0gYXJtYWRh
LTM3MC1idWZmYWxvLWxzNDIxZGUKICAgREVWSUNFX1BBQ0tBR0VTIDo9ICBcCi0gICAga21vZC1y
dGMtcnM1YzM3MmEga21vZC1od21vbi1ncGlvZmFuIGttb2QtdXNiMyBrbW9kLW1kLXJhaWQwIFwK
LSAgICBrbW9kLW1kLXJhaWQxIGttb2QtbWQtbW9kIGttb2QtZnMteGZzIG1rZjJmcyBlMmZzcHJv
Z3MgcGFydHgtdXRpbHMKKyAgICBrbW9kLXJ0Yy1yczVjMzcyYSBrbW9kLWh3bW9uLWdwaW9mYW4g
a21vZC1saW5rc3RhdGlvbi1wb3dlcm9mZiBcCisgICAga21vZC11c2IzIGttb2QtbWQtcmFpZDAg
a21vZC1tZC1yYWlkMSBrbW9kLW1kLW1vZCBrbW9kLWZzLXhmcyBcCisgICAgbWtmMmZzIGUyZnNw
cm9ncyBwYXJ0eC11dGlscwogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IGJ1ZmZhbG9fbHM0MjFk
ZQogCi0tIAoyLjI2LjIKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
