Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412AD1740F6
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 21:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbKJmDjegHAahs3MY/Zao79xE9tCEq9gbZGW7+y4rlc=; b=DKt7qDb0AnzI5z
	s/YhJoULrNydWEsTquJ0LtzIGwjT/KMkxiObyZcfozbv4RxxR4/xjHLDNFEys5STA7xnXZTEGD55p
	/skBLY0xjWMBLYkGjnvWs7z/Bx57vKHKN4L2AfrEEqdGfeQWm1OmyYkBri3IHWb/8VFTTqwsJw7ET
	3pmM9PPNx3JlwDydy0Hegh/xECzTAto9IKbe2zntpkDxh4i525Cn52Fr/y0wJpkBFCEF/Hd3Z0hLV
	xD9XALGkRYPYCmQ57ThRW3YC8IfdDffPJzI29JL+lW+f/XuYXCuM9CpmUbwj95Lu1SHF5FZLZjZPu
	eP7frBF0cv/9r/iq+lKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mHb-0007bd-6e; Fri, 28 Feb 2020 20:30:51 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mHU-0007aB-B3
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 20:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582921835;
 bh=Cvwqs5FdYdEFPtaYcSS7UakopIfNeFsOqkvuLVCVSEA=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=e4+WQJNFUp+VJqo/WJjlUtPbNA6u30wnVKT/gCpxokJnnKV7ShTvqGxkqnuKwWudT
 tTJYIDCnqtjg2m/0PngR+MXhI83Ctm0E5F3/Vz48cQWmURmHsOhLpG1MuCdUwNuIln
 c6pj8IqmuMqbwTKkgANvKGHXKjse0n1JQYpgmHkU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.45.145]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MeU4s-1jiDYl2e84-00aUwV; Fri, 28
 Feb 2020 21:30:35 +0100
Date: Fri, 28 Feb 2020 21:30:33 +0100
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200228213033.7df0aacf@mir>
In-Reply-To: <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:IuhlTKfOBKF8y/8wA8OYtu0GnbGNd8GzmnLkxaEW9Zq6sdSpVks
 baYcurhkgkEHJtGJFBS3bR2EaJISIxNky43ca5tRvFqAs9ooVs9fy3zNVMAgZrrBQy4wZB8
 7UY8xKM2JUBkWm3iPHdHknQTDokR+0u6KQyEQgDNJdD8aTLpMV1WpgDJd18Y+NmcWMJMYCk
 5Z+PcO+kTqVqKc6P8vBhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JKW5mX9IH1Q=:68T98ZQZJLo3PhyCCtMFY6
 hbc2GlfQbKCbNcZaRp2szXeMYPMlxturryCWZqEVVA8acuGBnXXg+uREywlnf89r+VFOkEuR9
 SQNJyGrU3MjpX8QHKH81o4jmFIzGi2PY+slKWnCcPF7FjAG+cpsl2x9KcbKfC8u3ylOaxqfFn
 fp2ZywzQWHYkIYonPONHx3Ux3oyfYwSj1+Shjp21a0RJ7fYgD9jLAAt9r6dJNfVnJ7cw4H4Ah
 UHoUXm7vErFdFQ2fm/ECUkRJlun6flqe5iR+HfGk1T274IRZuZDwCyJ7cmDZdsWopFxLJgBBm
 GcAfJx5lAvlafwspzP0Q4cpYbJE8FiU55TDAm4wtjK9NBppP4jyLAfdosBrwIcNnzMnODmz9i
 /pznUr0/lQIuZnXr0di7GbLGoICd036uFssDECxM6m74jwxaZtf7hCikJrcnk3TLqPklWAUQa
 Uo63/fJvP6Ddw+yKA4XvSXVNA3SLA+IFpNzEASPMaHVKlM8NbLnuzmQAFu4cRKKbXXl6RZkn4
 UIPGz/z95MS94r0zj5KU3PMc4l8YZTGKnC6nYqQ/c+CSzYlxTaSv2tDVxSTyPFqY1dF6r/zxO
 J27AgVR8ewks3qwG1yWW+P0Gy1T8x1sC2fbfpNu9ePBJ/bJ0utBlHPxLoW4SvGF+Z6E7eScZZ
 L2P5hZb1J0RdQshvIY72vfDiN2usVyDrpoQ/LyFEpf2YuddA/1J65JA+ebeVOQ2JXu8h7/Sq4
 XIoQdgKg45JLWcp8EU2VsVuDyG2MjVcvwmoctL0n8drw2tAftw3qmKBKHrA2wspjVP4oW6r4p
 7ScL6ePsQhiJnOuwUQIafX3zRM1SlhiLgQHfVLsQ2IJG2bCkHO/Z8VCQKFJgRGlwAGB2/6YdC
 AzL2mruXEclxYMP+tEQzYrVKKL0N/9U5kE51cUGNVggbrYrVIeNtGCOEFYN7E/oNb7b9zN1dF
 e86b5fBDI8l+GBRqtpRJdoATnOlqavyTh9JXWWpsxFDFqX5uX2VE2Ugs7p66J2miYIyqmGL03
 UNbhQf7LGtrr0LHdVqDOFPmyOwIT4oOAtl9JrlWeCUG0qfmToPzfNIRJk9PemTneWIZBQiHVX
 UY8tBR6iqqJSlbaX5wF64tQyFN/ebwpchoQ6mNyhq0vwuleaDLFo5gW3ZjndZ3r3YU6y0r9hC
 DkWU5ENvMKgAj1wllcsPUtPelOBYunmzZbNYIJWzfxKiNuc3nBOH4hScMZM5jgQqRkqOThqlY
 atuQEcdN8eFGMn/u/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_123044_716129_A397C6DC 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
 Chuanhong Guo <gch981213@gmail.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 2020-02-28, mail@adrianschmutzler.de wrote:
> Hi,
>
> > On 2020-02-28, Koen Vandeputte wrote:
[...]
> > All supported targets have been provided with kernel 5.4 as the "Testing
> > kernel".
> > This means you can enable 5.4 by selecting "Global --> use the testing kernel
> > version" within menuconfig.
>
> Thanks for your work.
>
> By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is broken now on
> this target.
> So, we should either copy that to files-4.14 as well or remove the
> remaining 4.14 files there as well (where I'd prefer the latter).

ath79 with kernel 4.14 has already been (mostly) broken by "ath79: add
new ar934x spi driver" (ebf0d8dadeca443121f4f597c51bf6591e341caf), which
does break the (shared between all kernel versions) DTS definitions for
NAND based ath79 devices (breaking compilation with kernel 4.14).

Because of "FS#2524 - ath79-tiny: TP-Link TL-WR941ND v2.4: Marvel
MV88E6060 regression between kernel v4.14 and v4.19"
https://bugs.openwrt.org/index.php?do=details&task_id=2524 I still do
regularly build ath79 with kernel 4.14, but in order to finish the build
I do need to comment out the affected devices:

$ grep \# ath79-k414.diff
+#TARGET_DEVICES += tplink_cpe210-v1
+#TARGET_DEVICES += tplink_cpe220-v2
+#TARGET_DEVICES += tplink_cpe510-v1
+#TARGET_DEVICES += tplink_cpe510-v2
+#TARGET_DEVICES += tplink_cpe510-v3
+#TARGET_DEVICES += tplink_cpe610-v1
+#TARGET_DEVICES += tplink_tl-wdr3500-v1
+#TARGET_DEVICES += tplink_tl-wdr3600-v1
+#TARGET_DEVICES += tplink_tl-wdr4300-v1
+#TARGET_DEVICES += tplink_tl-wdr4300-v1-il
+#TARGET_DEVICES += tplink_tl-wr842n-v2
+#TARGET_DEVICES += tplink_wbs210-v2
+#TARGET_DEVICES += tplink_wbs510-v1
+#TARGET_DEVICES += tplink_wbs510-v2
+#TARGET_DEVICES += ubnt_bullet-m-xw
+#TARGET_DEVICES += ubnt_lap-120
+#TARGET_DEVICES += ubnt_litebeam-ac-gen2
+#TARGET_DEVICES += ubnt_nanobeam-ac
+#TARGET_DEVICES += ubnt_nanostation-ac
+#TARGET_DEVICES += ubnt_nanostation-ac-loco
+#TARGET_DEVICES += ubnt_nanostation-loco-m-xw
+#TARGET_DEVICES += ubnt_nanostation-m-xw
+#TARGET_DEVICES += comfast_cf-e120a-v3
+#TARGET_DEVICES += dlink_dir-825-c1
+#TARGET_DEVICES += dlink_dir-835-a1
+#TARGET_DEVICES += iodata_etg3-r
+#TARGET_DEVICES += iodata_wn-ag300dgr
+#TARGET_DEVICES += ocedo_raccoon
+#TARGET_DEVICES += pcs_cap324
+#TARGET_DEVICES += pcs_cr3000
+#TARGET_DEVICES += pcs_cr5000
+#TARGET_DEVICES += pisen_wmb001n
+#TARGET_DEVICES += qihoo_c301
+#TARGET_DEVICES += sitecom_wlr-7100
+#TARGET_DEVICES += teltonika_rut955
+#TARGET_DEVICES += wd_mynet-n750
+#TARGET_DEVICES += wd_mynet-wifi-rangeextender
+#TARGET_DEVICES += winchannel_wb2000
+#TARGET_DEVICES += zbtlink_zbt-wd323

Admittedly, the affected TL-WR941ND v2 (4/32) is barely worth the effort
anymore.

Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
