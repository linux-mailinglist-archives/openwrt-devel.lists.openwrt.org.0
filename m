Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72956AC5F0
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 11:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV6F7wCv39jpk6ui1PSNODlfYf84H3ds/edQCFzWQLk=; b=ATYbe9BCuadA4a
	7oFquvWA+zlp6YVDu7SjCQGuyNGh4Zk96r84iNS5WU77TlM8odPV2+3zQY2nJ6qosD4Po5D1TTfba
	i076VVEty3o3kFeGk0/5Cz9xwk+J+7w3I9H3uDvnG7HulXU/LGFNFDQUu58GcdySE0/gwvIfqsT0y
	s68H3LS9OFsxh2DOsRFJ+NafaoiQAa/0dALJMvpSfY/50zETkfUe0d7lgeffcwlYtvUc8cDP9daAs
	lIplzDezNPq6y4zK5tQbBRnhFo3kCtWLSfdA1SumK2EisZsbzCBTRE7aessA13zSoYjzB7D+/ldlm
	txCNWdx3z3pIqe5iJaYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6XCF-0002HJ-Bv; Sat, 07 Sep 2019 09:39:55 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6XBv-0002Gb-4I
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 09:39:37 +0000
Received: from [IPv6:2003:e5:3f2e:b200:bc6b:5483:3da9:9aca]
 (p200300E53F2EB200BC6B54833DA99ACA.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2e:b200:bc6b:5483:3da9:9aca])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 22FC11FC3E;
 Sat,  7 Sep 2019 11:39:31 +0200 (CEST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
From: David Bauer <mail@david-bauer.net>
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
Date: Sat, 7 Sep 2019 11:39:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_023935_468887_40B4A5C2 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

On 9/5/19 5:00 PM, Adrian Schmutzler wrote:
> Hi,
> 
> if I remember correctly, there is still no mechanism to fix eth0/eth1 for devices where those have been swapped from ar71xx to ath79.
> 
> In principle, this can be done with a relatively small piece of code (not tested):
> 
> diff --git a/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migration b/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migration
> new file mode 100644
> index 0000000000..d6b519d25a
> --- /dev/null
> +++ b/target/linux/ath79/base-files/etc/uci-defaults/05_eth_migration
> @@ -0,0 +1,28 @@
> +#!/bin/sh
> +
> +rename_all_eth() {
> +       local before="$1"
> +       local after="$2"
> +
> +       sed -i "s/$before/$after/" /etc/board.json
> +       for e in $(ls /etc/config/* 2>/dev/null); do
> +               sed -i "s/$before/$after/" "$e"
> +       done
> +       for e in $(ls /etc/sysctl.d/* 2>/dev/null); do
> +               sed -i "s/$before/$after/" "$e"
> +       done
> +}
> +
> +case $(board_name) in
> +glinet,gl-ar150|\
> +tplink,archer-c58-v1|\
> +tplink,archer-c59-v1|\
> +tplink,archer-c60-v1|\
> +tplink,archer-c60-v2)
> +       rename_all_eth "eth0" "ethX"
> +       rename_all_eth "eth1" "eth0"
> +       rename_all_eth "ethX" "eth0"
> +       ;;
> +esac
> +
> +exit 0
> 
> However, this will obviously swap eth0/eth1 on EVERY upgrade, not just when coming from ar71xx.
> So, does anyone have an idea how to limit this to run only when updated from ar71xx?

I was thinking about the same. As we have no information about the previously installed platform,
i was thinking about abusing the wmac path we already use to migrate the WiFi configuration.
However, i think this is not the most elegant way to solve this issue.

> Despite, while having the abstraction of "rename_all_eth", I wonder whether it would be possible and desirable to do all renames in one step:
> sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file
> or even
> sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file
> depending on how sed handles this internally. These options would mean less flash writes (although this might not be too important here).

A rewrite with sed is not sufficient, as we will possible rewrite uci section names, possibly
referenced elsewhere. We have to loop thru all interface values and lists, rewriting each occurrence. 

Best wishes
David

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
