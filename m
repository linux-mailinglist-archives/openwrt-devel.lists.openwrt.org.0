Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2281EE9D7
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 19:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f2nuO6WNntJuUyEFzKS4JqY4cnBl5mv/KDXvSNYEUpc=; b=YlyALY325uIA3j
	ifJfWa/9faMIVFZA+grJQtVPdPiQTcDXqy1cNBsV7OWDCY+3sr2w885aLZQkbA23JVsR2XpgUcLlu
	TERomrXDonRiebYl9bDnyO4+xKBKyznSbIForHdUXdrRMnk7UWmizF7AmMIxUhDe1v3PmQfZt7lbW
	HgJtyftzxdGx8CmJmHg2I2QIjVkTBJ+GccuLzrdI6Uz4pItlcLPegSe8D6wOPdiF6duTbzGygO8L5
	SL0cbBxEnqY63UcEOqBT6IvWfvqMgV2NXkvSEpEh1nK+3YaszLTGSVmb0Kh0mTvH5dk7Ybt8zU0aN
	YIhdWTI4qLuyORzuVz1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu4l-00025f-75; Thu, 04 Jun 2020 17:54:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu4H-0001hW-41
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 17:54:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id k26so6603433wmi.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 10:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1AYwA5O8KKzOT76TLjZAMJ5buSza62sgdN9DphQv/rY=;
 b=SHP3arVVsyr2lJnSPlXOo6WgnLIfx1FoCYKEDwcEj0ikYfTUwk24hvwX8I6lyr8+Bt
 dftFKt0p5xsA8aNjca1ZmnEKgDRv9M/lvvF9Dvm1SjiyHw2weZEeK+dDzFs7ELAY05Tr
 yr/qlBlNgrahIohb/yPL9L5v0gD+eGXhhk+sOStzcS+MDSoyqX6fhf/a0IRBFiJ6ywa0
 XxY8Vt/85gMDJn8/MqJClO+yfJ92BI3gsRSKF5iCSw0mpvTccxm/gAjRG4lQpat05rpo
 3frX1Kpi3km2A+wt9WF4KJmFIO+yTyo/HddHRnVkZh4kwJ3vhP9w0f7bdtjE/PRc6Jpx
 xYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1AYwA5O8KKzOT76TLjZAMJ5buSza62sgdN9DphQv/rY=;
 b=m1dI8+HCoRSDGjvtqZmCZh+MDmNfUPwK6OUHJlzNy3QQoJ8QvmYDSc/W2tVZ4LYLFO
 2bVbwH4nyyN/2JJkTtTzNblaUyQ+idmLQDinHbbZCo9taCEU5YXhYXXQLO+b0m4OMNkv
 IA/IkEYOGm8+YLE4OcBLCayKBu09QIPDqP83kHFUj7j/aijMnXHh+iHVOXnuBT3z0IDg
 iokBwYzCJ4Y0I/NraeuwsYv9hqU/ONr3VHQWP/dqb/b+32OX6uYjsxdKXYvLpoBsHzbu
 ZIjTLCylhDrajEoX+7ffBXo0tqFQqKwmP/3g8q2XnRTTxUMgnAPXr4hOFLxAfphfvSJk
 i9HA==
X-Gm-Message-State: AOAM531crvHrOofkxkQm3hQE4mr/VkBUW6AiEZgVBNMV5F+a8kMt73nf
 j0Rv0p5mnJFgHhT04midiSiGGq0Ip50=
X-Google-Smtp-Source: ABdhPJyBEiLwBeyYFD46cwhbVFWdRZPnf2S5ba6B1BZdhhrvRvkrZVLUbxHrocoz0LrCMXaNIuQuhg==
X-Received: by 2002:a1c:7717:: with SMTP id t23mr5029459wmi.175.1591293251915; 
 Thu, 04 Jun 2020 10:54:11 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id d17sm10050044wrg.75.2020.06.04.10.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:54:10 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 04 Jun 2020 19:46:43 +0200
Message-ID: <5632296.MCBETrNQTy@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105417_162598_A182238F 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/4 v2] bcm63xx: add support for the Sercomm
 H500-s
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
Cc: freifunk@adrianschmutzler.de, noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2VyY29tbSBINTAwLXMgaXMgYW4geERTTCBkdWFsIGJhbmQgd2lyZWxlc3Mgcm91dGVyIGJhc2Vk
IG9uIEJyb2FkY29tCkJDTTYzMTY3IFNvQy4KCkhhcmR3YXJlOgogICBTb0M6ICAgICAgICAgIEJy
b2FkY29tIEJDTTYzMTY3CiAgIENQVTogICAgICAgICAgQk1JUFM0MzUwIFY4LjAsIDQwMCBNSHos
IDIgY29yZXMKICAgRmxhc2g6ICAgICAgICBOQU5EIDEyOCBNaUIKICAgUkFNOiAgICAgICAgICBE
RFIzIDEyOCBNaUIKICAgRXRoZXJuZXQ6ICAgICA0eCAxMC8xMDAvMTAwMCBNYnBzCiAgIFN3aXRj
aDogICAgICAgQkNNNTMxMzRTCiAgIFdpcmVsZXNzOiAgICAgODAyLjExYi9nL246IEJDTTQzNWYg
KGludGVncmF0ZWQpCiAgICAgICAgICAgICAgICAgODAyLjExYWM6ICAgIFF1YW50ZW5uYSBRVDM3
NDBCQyAob25ib2FyZCBTb0MpCiAgIFVTQjogICAgICAgICAgMXggMi4wCiAgIExFRHMvQnV0dG9u
czogMTF4IC8gMngKCkZsYXNoIGluc3RydWN0aW9uLCB3ZWIgVUk6CiAgMS4gUmVzZXQgdG8gZGVm
YXVsdHMgdXNpbmcgdGhlIHJlc2V0IGJ1dHRvbiBpZiB0aGUgYWRtaW4gcGFzc3dvcmQgaXMgCiAg
ICAgdW5rbm93bgogIDIuIExvZ2luIGludG8gdGhlIHdlYiBVSSBhcyBhZG1pbi4KICAgICBBZGRy
ZXNzOiAgaHR0cDovLzE5Mi4xNjguMC4xCiAgICAgVXNlcjogICAgIGFkbWluCiAgICAgUGFzc3dv
cmQ6IFZGLUVTVm9kYWZvbmUtSC01MDAtcyBvciBsMDMzaS1oNTAwcwogIDMuIEdvIHRvIFNldHRp
bmdzIC0+IEZpcm13YXJlIFVwZGF0ZSwgYW5kIHNlbGVjdCB0aGUgT3BlbndydCBmYWN0b3J5CiAg
ICAgZmlybXdhcmUKICA0LiBVcGRhdGUgdGhlIGZpcm13YXJlLgogIDUuIFdhaXQgdW50aWwgaXQg
ZmluaXNoLCB0aGUgZGV2aWNlIHdpbGwgcmVib290IHdpdGggT3BlbndydCBpbnN0YWxsZWQKICAg
ICBvbiB0aGUgYWx0ZXJuYXRpdmUgaW1hZ2UgcGFydGl0aW9ucyBrZWVwaW5nIHRoZSBzdG9jayBm
aXJtd2FyZSBpbiAKICAgICB0aGUgZm9ybWVyLgoKTm90ZXM6CiAgLSBUaGUgcGF0Y2ggYWxzbyBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBsb3dpIHZlcnNpb24uIE9ubHkgdGhlIGZhY3RvcnkKICAgIGZp
cm13YXJlIGlzIGRpZmZlcmVudC4KICAtIFRoZSBpbnRlZ3JhdGVkIFdpZmkgaW4gdGhlIEJyb2Fk
Y29tIFNvYyBpc24ndCBzdGlsbCBzdXBwb3J0ZWQuIAogIC0gVGhlIFF1YW50ZW5uYSA4MDIuMTFh
YyB3aWZpIHdvcmtzIG9rLCBidXQgbmVlZHMgdG8gYmUgY29uZmlndXJlZCB3aXRoCiAgICB0aGUg
UXVhbnRlbm5hIGNsaWVudCBhcHBsaWNhdGlvbi4gSXQgY2FuJ3QgYmUgY29uZmlndXJlZCB3aXRo
IEx1Y2kKICAgIG5vciBhbnkgaXcgY29tbWFuZCBzaW5jZSBpdCdzIGEgc2VwYXJhdGVkIHN1YnN5
c3RlbSBsaW5rZWQgdmlhCiAgICBldGhlcm5ldC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256
w6FsZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IMOBbHZhcm8g
RmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBBZHJpYW4g
U2NobXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFuc2NobXV0emxlci5kZT4KLS0tCkNoYW5nZXMgaW4g
djI6CiAgLSBGaXhlZCBwYXNzd29yZHMgaW4gY29tbWl0IGxvZwogIC0gQWRkZWQgdW5zdXBwb3J0
ZWQgc3dpdGNoIGluIGR0cwogIC0gQWRkZWQgY3VzdG9tIExPQURFUl9FTlRSWSB0byBmaXggdGhl
IHJhbWRpc2sgZm9yIHRoaXMgc3BlY2lmaWMgZGV2aWNlCiAgLSBSZW1vdmVkIHVubmVkZWQgYjQz
IHBhY2thZ2UKICAtIENvc21ldGljIGNoYW5nZXMKCi0tLQogLi4uL2JjbTYzeHgvYmFzZS1maWxl
cy9ldGMvYm9hcmQuZC8wMV9sZWRzICAgIHwgICAzICsKIC4uLi9iY202M3h4L2Jhc2UtZmlsZXMv
ZXRjL2JvYXJkLmQvMDJfbmV0d29yayB8ICAgMyArCiAuLi4vYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaCAgICAgICAgfCAgIDYgKy0KIC4uLi9iY202M3h4L2R0cy9iY202MzE2Ny1z
ZXJjb21tLWg1MDAtcy5kdHMgICB8IDI2MCArKysrKysrKysrKysrKysrKysKIHRhcmdldC9saW51
eC9iY202M3h4L2ltYWdlL2JjbTYzeHhfbmFuZC5tayAgICB8ICA1NCArKysrCiAuLi4vYmNtNjN4
eC9wYXRjaGVzLTUuNC81NjgtYm9hcmQtSDUwMHMucGF0Y2ggfCAgNzEgKysrKysKIDYgZmlsZXMg
Y2hhbmdlZCwgMzk1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzMTY3LXNlcmNvbW0taDUwMC1zLmR0
cwogY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9iY202M3h4L3BhdGNoZXMtNS40LzU2
OC1ib2FyZC1INTAwcy5wYXRjaAoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2Jh
c2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcyBiL3RhcmdldC9saW51eC9iY202M3h4L2Jhc2Ut
ZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcwppbmRleCA5MWQ2N2YwYzBiLi5mMDhkMjc3YzA2IDEw
MDc1NQotLS0gYS90YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAx
X2xlZHMKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8w
MV9sZWRzCkBAIC0xMDAsNiArMTAwLDkgQEAgc2VyY29tbSxhZDEwMTgpCiBzZXJjb21tLGFkMTAx
OC1ub3IpCiAJdWNpZGVmX3NldF9sZWRfbmV0ZGV2ICJ3bGFuMCIgIldMQU4iICJBRDEwMTg6Z3Jl
ZW46d2lmaSIgIndsYW4wIgogCTs7CitzZXJjb21tLGg1MDAtcykKKwl1Y2lkZWZfc2V0X2xlZF9u
ZXRkZXYgIndhbiIgIldBTiIgIiRtb2RlbDpncmVlbjppbnRlcm5ldCIgImV0aDAuMiIKKwk7Owog
dGVsc2V5LGNwdmE1MDJwbHVzKQogCXVjaWRlZl9zZXRfbGVkX25ldGRldiAibGFuIiAiTEFOIiAi
Q1BWQTUwMis6YW1iZXI6bGluayIgImV0aDAiCiAJOzsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9iY202M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayBiL3RhcmdldC9saW51
eC9iY202M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawppbmRleCA3ODRhZjI5
Y2I0Li4zMDQyYjM2ODJiIDEwMDc1NQotLS0gYS90YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCkBAIC0xNDIsNiArMTQyLDkgQEAgc2VyY29t
bSxhZDEwMTgtbm9yKQogCXVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiBcCiAJCSIxOmxhbjoz
IiAiMjpsYW46MiIgIjM6bGFuOjEiICIwOndhbiIgIjh0QGV0aDAiCiAJOzsKK3NlcmNvbW0saDUw
MC1zKQorCXVjaWRlZl9hZGRfc3dpdGNoICJzd2l0Y2gwIiAiNDpsYW4iICIzOndhbiIgIjh0QGV0
aDAiCisJOzsKIHNmcixuZXVmYm94LTYtc2VyY29tbS1yMCkKIAl1Y2lkZWZfYWRkX3N3aXRjaCAi
c3dpdGNoMCIgXAogCQkiMTpsYW4iICIyOmxhbiIgIjM6bGFuIiAiNDpsYW4iICIwOndhbiIgIjl0
QGV0aDAiCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZpbGVzL2xpYi91
cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvYmFzZS1maWxlcy9saWIv
dXBncmFkZS9wbGF0Zm9ybS5zaAppbmRleCA3ZDQxNjI5N2RkLi5hMDc1MDkwMWIyIDEwMDY0NAot
LS0gYS90YXJnZXQvbGludXgvYmNtNjN4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3Jt
LnNoCisrKyBiL3RhcmdldC9saW51eC9iY202M3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxh
dGZvcm0uc2gKQEAgLTksNyArOSw4IEBAIHBsYXRmb3JtX2NoZWNrX2ltYWdlKCkgewogCQljb210
cmVuZCx2ci0zMDMydXxcCiAJCWh1YXdlaSxoZzI1M3MtdjJ8XAogCQluZXRnZWFyLGRnbmQzNzAw
LXYyfFwKLQkJc2VyY29tbSxhZDEwMTgpCisJCXNlcmNvbW0sYWQxMDE4fFwKKwkJc2VyY29tbSxo
NTAwLXMpCiAJCQkjIE5BTkQgc3lzdXBncmFkZQogCQkJcmV0dXJuIDAKIAkJCTs7CkBAIC02OSw3
ICs3MCw4IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKSB7CiAJCWNvbXRyZW5kLHZyLTMwMzJ1fFwK
IAkJaHVhd2VpLGhnMjUzcy12MnxcCiAJCW5ldGdlYXIsZGduZDM3MDAtdjJ8XAotCQlzZXJjb21t
LGFkMTAxOCkKKwkJc2VyY29tbSxhZDEwMTh8XAorCQlzZXJjb21tLGg1MDAtcykKIAkJCVJFUVVJ
UkVfSU1BR0VfTUVUQURBVEE9MQogCQkJY2ZlX2pmZnMyX3VwZ3JhZGVfdGFyICIkMSIKIAkJCTs7
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjMxNjctc2VyY29tbS1o
NTAwLXMuZHRzIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzMTY3LXNlcmNvbW0taDUw
MC1zLmR0cwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi42YzRmOWMyM2Zk
Ci0tLSAvZGV2L251bGwKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvZHRzL2JjbTYzMTY3LXNl
cmNvbW0taDUwMC1zLmR0cwpAQCAtMCwwICsxLDI2MCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCisvKgorICogRGV2aWNlIFRyZWUgZmlsZSBmb3IgU2Vy
Y29tbSBINTAwLXMKKyAqCisgKiBDb3B5cmlnaHQgKEMpIDIwMjAgRGFuaWVsIEdvbnrDoWxleiBD
YWJhbmVsYXMgPGRnY2J1ZXVAZ21haWwuY29tPgorICovCisKKy9kdHMtdjEvOworCisjaW5jbHVk
ZSAiYmNtNjMyNjguZHRzaSIKKworI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+
CisKKy8geworCW1vZGVsID0gIlNlcmNvbW0gSDUwMC1zIjsKKwljb21wYXRpYmxlID0gInNlcmNv
bW0saDUwMC1zIiwgImJyY20sYmNtNjMyNjgiOworCisJYWxpYXNlcyB7CisJCWxlZC1ib290ID0g
JmxlZF9wb3dlcl9ncmVlbjsKKwkJbGVkLWZhaWxzYWZlID0gJmxlZF9wb3dlcl9yZWQ7CisJCWxl
ZC1ydW5uaW5nID0gJmxlZF9wb3dlcl9ncmVlbjsKKwkJbGVkLXVwZ3JhZGUgPSAmbGVkX3Bvd2Vy
X2dyZWVuOworCX07CisKKwljaG9zZW4geworCQlib290YXJncyA9ICJyb290ZnN0eXBlPXNxdWFz
aGZzLHViaWZzIG5vaW5pdHJkIGNvbnNvbGU9dHR5UzAsMTE1MjAwIjsKKwkJc3Rkb3V0LXBhdGgg
PSAic2VyaWFsMDoxMTUyMDBuOCI7CisJfTsKKworCWtleXMgeworCQljb21wYXRpYmxlID0gImdw
aW8ta2V5cy1wb2xsZWQiOworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMg
PSA8MD47CisJCXBvbGwtaW50ZXJ2YWwgPSA8MjA+OworCisJCXdwcyB7CisJCQlsYWJlbCA9ICJ3
cHMiOworCQkJZ3Bpb3MgPSA8JnBpbmN0cmwgMzQgMT47CisJCQlsaW51eCxjb2RlID0gPEtFWV9X
UFNfQlVUVE9OPjsKKwkJCWRlYm91bmNlLWludGVydmFsID0gPDYwPjsKKwkJfTsKKworCQlyZXNl
dCB7CisJCQlsYWJlbCA9ICJyZXNldCI7CisJCQlncGlvcyA9IDwmcGluY3RybCAzNSAxPjsKKwkJ
CWxpbnV4LGNvZGUgPSA8S0VZX1JFU1RBUlQ+OworCQkJZGVib3VuY2UtaW50ZXJ2YWwgPSA8NjA+
OworCQl9OworCX07Cit9OworCismbGVkcyB7CisJc3RhdHVzID0gIm9rYXkiOworCisJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfbGVkcz47CisKKwlt
b2JpbGVfcmVkIHsKKwkJcmVnID0gPDA+OworCQlsYWJlbCA9ICJoNTAwLXM6cmVkOm1vYmlsZSI7
CisJfTsKKworCW1vYmlsZV9ncmVlbiB7CisJCXJlZyA9IDwxPjsKKwkJbGFiZWwgPSAiaDUwMC1z
OmdyZWVuOm1vYmlsZSI7CisJfTsKKworCWxlZF9wb3dlcl9yZWQ6IHBvd2VyX3JlZCB7CisJCXJl
ZyA9IDw4PjsKKwkJbGFiZWwgPSAiaDUwMC1zOnJlZDpwb3dlciI7CisJfTsKKworCXdpZmlfZ3Jl
ZW4geworCQlyZWcgPSA8OT47CisJCWxhYmVsID0gImg1MDAtczpncmVlbjp3aWZpIjsKKwl9Owor
CisJcGhvbmVfcmVkIHsKKwkJcmVnID0gPDEyPjsKKwkJbGFiZWwgPSAiaDUwMC1zOnJlZDpwaG9u
ZSI7CisJfTsKKworCXdpZmlfcmVkIHsKKwkJcmVnID0gPDEzPjsKKwkJbGFiZWwgPSAiaDUwMC1z
OnJlZDp3aWZpIjsKKwl9OworCisJaW50ZXJuZXRfcmVkIHsKKwkJcmVnID0gPDE0PjsKKwkJbGFi
ZWwgPSAiaDUwMC1zOnJlZDppbnRlcm5ldCI7CisJfTsKKworCWludGVybmV0X2dyZWVuIHsKKwkJ
cmVnID0gPDE1PjsKKwkJbGFiZWwgPSAiaDUwMC1zOmdyZWVuOmludGVybmV0IjsKKwl9OworCisJ
cGhvbmVfZ3JlZW4geworCQlyZWcgPSA8MTY+OworCQlsYWJlbCA9ICJoNTAwLXM6Z3JlZW46cGhv
bmUiOworCX07CisKKwlsZWRfcG93ZXJfZ3JlZW46IHBvd2VyX2dyZWVuIHsKKwkJcmVnID0gPDE3
PjsKKwkJbGFiZWwgPSAiaDUwMC1zOmdyZWVuOnBvd2VyIjsKKwkJZGVmYXVsdC1zdGF0ZSA9ICJv
biI7CisJfTsKKworCW1vYmlsZV9ibHVlIHsKKwkJcmVnID0gPDIzPjsKKwkJbGFiZWwgPSAiaDUw
MC1zOmJsdWU6bW9iaWxlIjsKKwl9OworfTsKKworLyogTm90IHN1cHBvcnRlZCAqLworI2lmIDAK
KyZtZGlvIHsKKwlzdGF0dXMgPSAiZGlzYWJsZWQiOworCisJc3dpdGNoQDAgeworCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOworCQljb21wYXRpYmxlID0gImJyY20sYmNtNTMxMzQiOworCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MD47CisJCXJlZyA9IDwwPjsKKworCQlw
b3J0cyB7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCSNzaXplLWNlbGxzID0gPDA+Owor
CisJCQlsYW5AMSB7CisJCQkJcmVnID0gPDE+OworCQkJCWxhYmVsID0gImxhbjMiOworCQkJfTsK
KworCQkJbGFuQDIgeworCQkJCXJlZyA9IDwyPjsKKwkJCQlsYWJlbCA9ICJsYW4yIjsKKwkJCX07
CisKKwkJCWxhbkAzIHsKKwkJCQlyZWcgPSA8Mz47CisJCQkJbGFiZWwgPSAibGFuMSI7CisJCQl9
OworCisJCQl3aWZpQDUgeworCQkJCXJlZyA9IDw1PjsKKwkJCQlsYWJlbCA9ICJ3aWZpIjsKKwor
CQkJCWZpeGVkLWxpbmsgeworCQkJCQlzcGVlZCA9IDwxMDAwPjsKKwkJCQkJZnVsbC1kdXBsZXg7
CisJCQkJCWFzeW0tcGF1c2U7CisJCQkJCXBhdXNlOworCQkJCX07CisJCQl9OworCisJCQljcHVA
OCB7CisJCQkJcmVnID0gPDg+OworCQkJCWxhYmVsID0gImNwdSI7CisKKwkJCQlmaXhlZC1saW5r
IHsKKwkJCQkJc3BlZWQgPSA8MTAwMD47CisJCQkJCWZ1bGwtZHVwbGV4OworCQkJCQlhc3ltLXBh
dXNlOworCQkJCQlwYXVzZTsKKwkJCQl9OworCQkJfTsKKwkJfTsKKwl9OworfTsKKyNlbmRpZgor
CismbmZsYXNoIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwluYW5kY3NAMCB7CisJCWNvbXBhdGli
bGUgPSAiYnJjbSxuYW5kY3MiOworCQlyZWcgPSA8MD47CisKKwkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZwaW5jdHJsX25hbmQ+OworCisJCW5hbmQtb24tZmxh
c2gtYmJ0OworCQluYW5kLWVjYy1zdHJlbmd0aCA9IDw0PjsKKwkJbmFuZC1lY2Mtc3RlcC1zaXpl
ID0gPDUxMj47CisJCWJyY20sbmFuZC1vb2Itc2VjdG9yLXNpemUgPSA8NjQ+OworCisJCXBhcnRp
dGlvbnMgeworCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCSNhZGRyZXNz
LWNlbGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MT47CisKKwkJCXBhcnRpdGlvbkAwIHsK
KwkJCQlsYWJlbCA9ICJjZmVyb20iOworCQkJCXJlZyA9IDwweDAwMDAwMDAgMHgwMDIwMDAwPjsK
KwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlwYXJ0aXRpb25AMjAwMDAgeworCQkJCWxhYmVs
ID0gInBhcnRfbWFwIjsKKwkJCQlyZWcgPSA8MHgwMDIwMDAwIDB4MDBhMDAwMD47CisJCQkJcmVh
ZC1vbmx5OworCQkJfTsKKworCQkJcGFydGl0aW9uQGMwMDAwIHsKKwkJCQlsYWJlbCA9ICJjZmVy
YW0xIjsKKwkJCQlyZWcgPSA8MHgwMGMwMDAwIDB4MDE0MDAwMD47CisJCQkJcmVhZC1vbmx5Owor
CQkJfTsKKworCQkJcGFydGl0aW9uQDIwMDAwMCB7CisJCQkJbGFiZWwgPSAiY2ZlcmFtMiI7CisJ
CQkJcmVnID0gPDB4MDIwMDAwMCAweDAxNDAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisK
KwkJCXBhcnRpdGlvbkA2OTIwMDAwIHsKKwkJCQlsYWJlbCA9ICJib290ZmxhZzEiOworCQkJCXJl
ZyA9IDwweDY5MjAwMDAgMHgwMTQwMDAwPjsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA2YTYwMDAw
IHsKKwkJCQlsYWJlbCA9ICJib290ZmxhZzIiOworCQkJCXJlZyA9IDwweDZhNjAwMDAgMHgwMTQw
MDAwPjsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA1MjAwMDAgeworCQkJCWNvbXBhdGlibGUgPSAi
c2VyY29tbSx3ZmkiOworCQkJCWxhYmVsID0gIndmaSI7CisJCQkJcmVnID0gPDB4MDUyMDAwMCAw
eDY0MDAwMDA+OyAvKiAyIGltYWdlcywgOTcxNTIgS2lCICovCisJCQl9OworCisJCQlwYXJ0aXRp
b25ANmJhMDAwMCB7CisJCQkJbGFiZWwgPSAieG1sX2NmZyI7CisJCQkJcmVnID0gPDB4NmJhMDAw
MCAweDAyODAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA2ZTIw
MDAwIHsKKwkJCQlsYWJlbCA9ICJhcHBfZGF0YSI7CisJCQkJcmVnID0gPDB4NmUyMDAwMCAweDAy
ODAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisJCX07CisJfTsKK307CisKKyZwaW5jdHJs
IHsKKwlwaW5jdHJsX2xlZHM6IGxlZHMgeworCQlmdW5jdGlvbiA9ICJsZWQiOworCQlwaW5zID0g
ImdwaW8wIiwgICJncGlvMSIsICAiZ3BpbzgiLCAgImdwaW85IiwKKwkJICAgICAgICJncGlvMTIi
LCAiZ3BpbzEzIiwgImdwaW8xNCIsICJncGlvMTUiLAorCQkgICAgICAgImdwaW8xNiIsICJncGlv
MTciLCAiZ3BpbzIzIjsKKwl9OworfTsKKworJnVhcnQwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9
OwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNtNjN4eF9uYW5kLm1r
IGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNtNjN4eF9uYW5kLm1rCmluZGV4IDdiMjAz
OWM5ODguLjAxMDkwYzJlNjcgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdl
L2JjbTYzeHhfbmFuZC5taworKysgYi90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9iY202M3h4
X25hbmQubWsKQEAgLTE0OSwzICsxNDksNTcgQEAgZGVmaW5lIERldmljZS9zZXJjb21tX2FkMTAx
OAogICBTRVJDT01NX1ZFUlNJT04gOj0gMTAwMQogZW5kZWYKIFRBUkdFVF9ERVZJQ0VTICs9IHNl
cmNvbW1fYWQxMDE4CisKK2RlZmluZSBEZXZpY2Uvc2VyY29tbV9oNTAwLXMKKyAgJChEZXZpY2Uv
c2VyY29tbS1uYW5kKQorICBERVZJQ0VfVkVORE9SIDo9IFNlcmNvbW0KKyAgREVWSUNFX01PREVM
IDo9IEg1MDAtcworICBMT0FERVJfRU5UUlkgOj0gMHg4MDAxMDAwMCAKKyAgS0VSTkVMIDo9IGtl
cm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IGNmZS1qZmZzMi1rZXJuZWwgJCQoS0VSTkVM
X0xPQURBRERSKQorICBDSElQX0lEIDo9IDYzMjY4CisgIFNPQyA6PSBiY202MzE2NworICBCTE9D
S1NJWkUgOj0gMTI4aworICBQQUdFU0laRSA6PSAyMDQ4CisgIFNVQlBBR0VTSVpFIDo9IDUxMgor
ICBWSURfSERSX09GRlNFVCA6PSAyMDQ4CisgIERFVklDRV9QQUNLQUdFUyArPSAkKFVTQjJfUEFD
S0FHRVMpCisgIFNFUkNPTU1fUElEIDo9IFwKKyAgICAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMSAz
NCAzMiAzNSAzOCAzNCA2MiAzMCAzMCBcCisgICAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAg
MzAgMzAgMzAgMzAgMzAgMzAgMzAgXAorICAgIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMw
IDMwIDMwIDMwIDMwIDMwIDMwIFwKKyAgICAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAz
MCAzMCAzMCAzMCAzMCAzMCBcCisgICAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAg
MzAgMzAgMzAgMzAgMzAgXAorICAgIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMw
IDMwIDMwIDMwIDMwIFwKKyAgICAzMCAzMCAzMCAzMCAzMyAzNCAzMSAzNyAzMCAzMCAzMCAzMCAz
MCAzMCAzMCAzMCBcCisgICAgMEQgMEEgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAKKyAgU0VSQ09NTV9WRVJTSU9OIDo9IDEwMDEKK2VuZGVmCitUQVJHRVRfREVWSUNF
UyArPSBzZXJjb21tX2g1MDAtcworCitkZWZpbmUgRGV2aWNlL3NlcmNvbW1faDUwMC1zLWxvd2kK
KyAgJChEZXZpY2Uvc2VyY29tbS1uYW5kKQorICBERVZJQ0VfVkVORE9SIDo9IFNlcmNvbW0KKyAg
REVWSUNFX01PREVMIDo9IEg1MDAtcworICBERVZJQ0VfVkFSSUFOVCA6PSBsb3dpCisgIERFVklD
RV9EVFMgOj0gYmNtNjMxNjctc2VyY29tbS1oNTAwLXMKKyAgTE9BREVSX0VOVFJZIDo9IDB4ODAw
MTAwMDAKKyAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IGNmZS1q
ZmZzMi1rZXJuZWwgJCQoS0VSTkVMX0xPQURBRERSKQorICBDSElQX0lEIDo9IDYzMjY4CisgIFNP
QyA6PSBiY202MzE2NworICBCTE9DS1NJWkUgOj0gMTI4aworICBQQUdFU0laRSA6PSAyMDQ4Cisg
IFNVQlBBR0VTSVpFIDo9IDUxMgorICBWSURfSERSX09GRlNFVCA6PSAyMDQ4CisgIERFVklDRV9Q
QUNLQUdFUyArPSAkKFVTQjJfUEFDS0FHRVMpCisgIFNFUkNPTU1fUElEIDo9IFwKKyAgICAzMCAz
MCAzMCAzMCAzMCAzMCAzMCAzMSAzNCAzMyAzNCA2MiAzMyAzMSAzMCAzMCBcCisgICAgMzAgMzAg
MzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgXAorICAgIDMwIDMwIDMw
IDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIFwKKyAgICAzMCAzMCAzMCAz
MCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCBcCisgICAgMzAgMzAgMzAgMzAg
MzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgMzAgXAorICAgIDMwIDMwIDMwIDMwIDMw
IDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIDMwIFwKKyAgICAzMCAzMCAzMCAzMCAzMyAz
MyAzMCAzNSAzMCAzMCAzMCAzMCAzMCAzMCAzMCAzMCBcCisgICAgMEQgMEEgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAKKyAgU0VSQ09NTV9WRVJTSU9OIDo9IDEwMDEK
K2VuZGVmCitUQVJHRVRfREVWSUNFUyArPSBzZXJjb21tX2g1MDAtcy1sb3dpCmRpZmYgLS1naXQg
YS90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC81NjgtYm9hcmQtSDUwMHMucGF0Y2gg
Yi90YXJnZXQvbGludXgvYmNtNjN4eC9wYXRjaGVzLTUuNC81NjgtYm9hcmQtSDUwMHMucGF0Y2gK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uOGE2MjhlOTIzMwotLS0gL2Rl
di9udWxsCisrKyBiL3RhcmdldC9saW51eC9iY202M3h4L3BhdGNoZXMtNS40LzU2OC1ib2FyZC1I
NTAwcy5wYXRjaApAQCAtMCwwICsxLDcxIEBACistLS0gYS9hcmNoL21pcHMvYmNtNjN4eC9ib2Fy
ZHMvYm9hcmRfYmNtOTYzeHguYworKysrIGIvYXJjaC9taXBzL2JjbTYzeHgvYm9hcmRzL2JvYXJk
X2JjbTk2M3h4LmMKK0BAIC0yODY3LDEwICsyODY3LDQ0IEBACisgCQkJfSwKKyAKKyAJCX0sCisg
CX0sCisgfTsKKysKKytzdGF0aWMgc3RydWN0IGJvYXJkX2luZm8gX19pbml0ZGF0YSBib2FyZF9I
NTAwcyA9IHsKKysJLm5hbWUJCQkJPSAiQlhLMDBDLTEuNiIsCisrCS5leHBlY3RlZF9jcHVfaWQJ
CT0gMHg2MzI2OCwKKysKKysJLmhhc19wY2kJCQk9IDAsCisrCS51c2VfZmFsbGJhY2tfc3Byb20J
CT0gMCwKKysKKysJLmhhc19laGNpMAkJCT0gMSwKKysJLmhhc19vaGNpMAkJCT0gMSwKKysJLm51
bV91c2JoX3BvcnRzCQkJPSAxLAorKworKwkuaGFzX2VuZXRzdwkJCT0gMSwKKysJLmVuZXRzdyA9
IHsKKysJCS51c2VkX3BvcnRzID0geworKwkJCVszXSA9IHsKKysJCQkJLnVzZWQgICA9IDEsCisr
CQkJCS5waHlfaWQgPSAxMiwKKysJCQkJLm5hbWUgICA9ICJXQU4iLAorKwkJCX0sCisrCisrCQkJ
WzRdID0geworKwkJCQkudXNlZCA9IDEsCisrCQkJCS5waHlfaWQgPSAwLAorKwkJCQkuYnlwYXNz
X2xpbmsgPSAxLAorKwkJCQkuZm9yY2Vfc3BlZWQgPSAxMDAwLAorKwkJCQkuZm9yY2VfZHVwbGV4
X2Z1bGwgPSAxLAorKwkJCQkubWlpX292ZXJyaWRlID0gMSwKKysJCQkJLnRpbWluZ19zZWwgPSAx
LAorKwkJCQkubmFtZSA9ICJSR01JSSIsCisrCQkJfSwKKysJCX0sCisrCX0sCisrfTsKKyAjZW5k
aWYgLyogQ09ORklHX0JDTTYzWFhfQ1BVXzYzMjY4ICovCisgCisgLyoKKyAgKiBhbGwgYm9hcmRz
CisgICovCitAQCAtMjk4MSwxMCArMzAxNSwxMSBAQAorIAkmYm9hcmRfOTYzMjY5YmhyLAorIAkm
Ym9hcmRfVkc4MDUwLAorIAkmYm9hcmRfVlIzMDMydSwKKyAJJmJvYXJkX3Z3NjMzOWd1LAorIAkm
Ym9hcmRfQlNLWUJfNjMxNjgsCisrCSZib2FyZF9INTAwcywKKyAjZW5kaWYKKyB9OworIAorIHN0
YXRpYyBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGNvbnN0IGJjbTk2M3h4X2JvYXJkc19kdFtdID0gewor
ICNpZmRlZiBDT05GSUdfT0YKK0BAIC0zMDk5LDEwICszMTM0LDExIEBACisgCXsgLmNvbXBhdGli
bGUgPSAiYnJjbSxiY205NjMyNjhidS1wMzAwIiwgLmRhdGEgPSAmYm9hcmRfOTYzMjY4YnVfcDMw
MCwgfSwKKyAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTk2MzI2OWJociIsIC5kYXRhID0gJmJv
YXJkXzk2MzI2OWJociwgfSwKKyAJeyAuY29tcGF0aWJsZSA9ICJjb210cmVuZCx2Zy04MDUwIiwg
LmRhdGEgPSAmYm9hcmRfVkc4MDUwLCB9LAorIAl7IC5jb21wYXRpYmxlID0gImNvbXRyZW5kLHZy
LTMwMzJ1IiwgLmRhdGEgPSAmYm9hcmRfVlIzMDMydSwgfSwKKyAJeyAuY29tcGF0aWJsZSA9ICJp
bnRlbm8sdmc1MCIsIC5kYXRhID0gJmJvYXJkX3Z3NjMzOWd1LCB9LAorKwl7IC5jb21wYXRpYmxl
ID0gInNlcmNvbW0saDUwMC1zIiwgLmRhdGEgPSAmYm9hcmRfSDUwMHMsIH0sCisgCXsgLmNvbXBh
dGlibGUgPSAic2t5LHNyMTAyIiwgLmRhdGEgPSAmYm9hcmRfQlNLWUJfNjMxNjgsIH0sCisgI2Vu
ZGlmCisgI2VuZGlmIC8qIENPTkZJR19PRiAqLworIAl7IH0sCisgfTsKLS0gCjIuMjcuMAoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
